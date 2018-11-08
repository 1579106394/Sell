package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `type` (
 *   `type_id` varchar(36) NOT NULL,
 *   `type_name` varchar(36) NOT NULL,
 *   `type_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常 2删除',
 *   PRIMARY KEY (`type_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class Type implements Serializable {

    private String typeId;
    private String typeName;
    private Integer typeFlag;

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getTypeFlag() {
        return typeFlag;
    }

    public void setTypeFlag(Integer typeFlag) {
        this.typeFlag = typeFlag;
    }
}
