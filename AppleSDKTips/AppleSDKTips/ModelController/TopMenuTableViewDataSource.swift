//
//  TopMenuTableViewDataSource.swift
//  AppleSDKTips
//

import UIKit

class TopMenuTableViewDataSource: NSObject, UITableViewDataSource {
    
    //---------------------------------------------
    // MARK: - Properties

    weak var modelController: TopMenuModelController?
    
    //---------------------------------------------
    // MARK: - Life Cycle
    
    init(controller: TopMenuModelController) {
        
        modelController = controller
    }
    
    //---------------------------------------------
    // MARK: - TableView DataSource Delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        guard let ref = modelController else {
            return 0
        }
        
        return ref.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let ref = modelController else {
            return 0
        }
        
        return ref.numberOfItem(forSection: ref.sectionNameString(with: section))
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        guard let ref = modelController else {
            return ""
        }
        
        return ref.sectionNameString(with: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let ref = modelController else {
            return UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }

        let sectionNo = indexPath.section
        let rowNo = indexPath.row
        
        let sectionName = ref.sectionNameString(with: sectionNo)
        
        let cellObject = ref.item(forSection: sectionName, index: rowNo)

        var cell = tableView.dequeueReusableCell(withIdentifier: TopMenuTableViewCell.cellIdentifier())
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }
        
        guard let cellRef: TopMenuTableViewCell = cell as! TopMenuTableViewCell? else {
            return UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: TopMenuTableViewCell.cellIdentifier())
        }
        cellRef.titleLabel.text = cellObject?.titleString

        return cellRef
        
        /*
         NSInteger sectionNo = indexPath.section;
         NSInteger rowNo = indexPath.row;
         
         NSString *sectionName = [_dataController sectionNameStringWithIndex:sectionNo];
         MTMTopMenuEntity* itemObj = [_dataController itemForSection:sectionName index:rowNo];
         
         static NSString* cellID = @"macTechnicalness";
         UITableViewCell* cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellID];
         if (cell == nil) {
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
         }
         
         cell.textLabel.numberOfLines = 0;
         cell.textLabel.adjustsFontSizeToFitWidth = YES;
         cell.textLabel.text = itemObj.titleString;
         
         if ([itemObj.viewControllerNameString length] == 0) {
         cell.textLabel.textColor = [UIColor lightGrayColor];
         }
         
         UIStoryboard* storyboard = nil;
         @try {
         storyboard = [UIStoryboard storyboardWithName:itemObj.viewControllerNameString bundle: nil];
         }
         @catch (NSException *exception) {
         debugout(@"exception: %@", exception);
         }
         
         UIViewController* vc0 = [storyboard instantiateInitialViewController];
         UIViewController* vc = [[NSClassFromString(itemObj.viewControllerNameString) alloc] init];
         if(vc0 == nil && vc == nil){
         cell.textLabel.textColor = [UIColor lightGrayColor];
         }else{
         cell.textLabel.textColor = [UIColor blackColor];
         }
         
         return cell;
         */
    }

}
