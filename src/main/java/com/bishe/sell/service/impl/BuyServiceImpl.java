package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.BuyMapper;
import com.bishe.sell.service.BuyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BuyServiceImpl implements BuyService {

    @Autowired
    private BuyMapper buyMapper;

}
