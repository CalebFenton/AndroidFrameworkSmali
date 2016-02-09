.class public Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "ASN1Dump.java"


# static fields
.field private static final SAMPLE_SIZE:I = 0x20

.field private static final TAB:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static _dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    .locals 11
    .param p0, "indent"    # Ljava/lang/String;
    .param p1, "verbose"    # Z
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 53
    const-string/jumbo v9, "line.separator"

    #@3
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 54
    .local v4, "nl":Ljava/lang/String;
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    if-eqz v9, :cond_5

    #@b
    move-object v9, p2

    #@c
    .line 56
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@e
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@11
    move-result-object v1

    #@12
    .line 57
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v9, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    const-string/jumbo v10, "    "

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    .line 59
    .local v8, "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 60
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@2b
    if-eqz v9, :cond_1

    #@2d
    .line 62
    const-string/jumbo v9, "BER Sequence"

    #@30
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 73
    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 75
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_7

    #@3c
    .line 77
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    .line 79
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_0

    #@42
    sget-object v9, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@44
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v9

    #@48
    if-eqz v9, :cond_3

    #@4a
    .line 81
    :cond_0
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    .line 82
    const-string/jumbo v9, "NULL"

    #@50
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 83
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    goto :goto_1

    #@57
    .line 64
    .end local v6    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@59
    if-eqz v9, :cond_2

    #@5b
    .line 66
    const-string/jumbo v9, "DER Sequence"

    #@5e
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    goto :goto_0

    #@62
    .line 70
    :cond_2
    const-string/jumbo v9, "Sequence"

    #@65
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    goto :goto_0

    #@69
    .line 85
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v9, v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6b
    if-eqz v9, :cond_4

    #@6d
    .line 87
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6f
    .end local v6    # "o":Ljava/lang/Object;
    invoke-static {v8, p1, v6, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@72
    goto :goto_1

    #@73
    .line 91
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_4
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@75
    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@78
    move-result-object v9

    #@79
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@7c
    goto :goto_1

    #@7d
    .line 95
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_5
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@7f
    if-eqz v9, :cond_a

    #@81
    .line 97
    new-instance v9, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    const-string/jumbo v10, "    "

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    .line 99
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    .line 100
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@9a
    if-eqz v9, :cond_8

    #@9c
    .line 102
    const-string/jumbo v9, "BER Tagged ["

    #@9f
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a2
    :goto_2
    move-object v5, p2

    #@a3
    .line 109
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@a5
    .line 111
    .local v5, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@a8
    move-result v9

    #@a9
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b0
    .line 112
    const/16 v9, 0x5d

    #@b2
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b5
    .line 114
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@b8
    move-result v9

    #@b9
    if-nez v9, :cond_6

    #@bb
    .line 116
    const-string/jumbo v9, " IMPLICIT "

    #@be
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c1
    .line 119
    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    .line 121
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isEmpty()Z

    #@c7
    move-result v9

    #@c8
    if-eqz v9, :cond_9

    #@ca
    .line 123
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cd
    .line 124
    const-string/jumbo v9, "EMPTY"

    #@d0
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d3
    .line 125
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    .line 51
    .end local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v8    # "tab":Ljava/lang/String;
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_7
    :goto_3
    return-void

    #@d7
    .line 106
    .restart local v8    # "tab":Ljava/lang/String;
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_8
    const-string/jumbo v9, "Tagged ["

    #@da
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dd
    goto :goto_2

    #@de
    .line 129
    .restart local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e1
    move-result-object v9

    #@e2
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@e5
    goto :goto_3

    #@e6
    .line 132
    .end local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_a
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e8
    if-eqz v9, :cond_e

    #@ea
    move-object v9, p2

    #@eb
    .line 134
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@ed
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@f0
    move-result-object v1

    #@f1
    .line 135
    .restart local v1    # "e":Ljava/util/Enumeration;
    new-instance v9, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    const-string/jumbo v10, "    "

    #@fd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v9

    #@101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v8

    #@105
    .line 137
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@108
    .line 139
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@10a
    if-eqz v9, :cond_b

    #@10c
    .line 141
    const-string/jumbo v9, "BER Set"

    #@10f
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@112
    .line 148
    :goto_4
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@115
    .line 150
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@118
    move-result v9

    #@119
    if-eqz v9, :cond_7

    #@11b
    .line 152
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11e
    move-result-object v6

    #@11f
    .line 154
    .restart local v6    # "o":Ljava/lang/Object;
    if-nez v6, :cond_c

    #@121
    .line 156
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@124
    .line 157
    const-string/jumbo v9, "NULL"

    #@127
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12a
    .line 158
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12d
    goto :goto_5

    #@12e
    .line 145
    .end local v6    # "o":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v9, "DER Set"

    #@131
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@134
    goto :goto_4

    #@135
    .line 160
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_c
    instance-of v9, v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@137
    if-eqz v9, :cond_d

    #@139
    .line 162
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13b
    .end local v6    # "o":Ljava/lang/Object;
    invoke-static {v8, p1, v6, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@13e
    goto :goto_5

    #@13f
    .line 166
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_d
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@141
    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@144
    move-result-object v9

    #@145
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@148
    goto :goto_5

    #@149
    .line 170
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_e
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@14b
    if-eqz v9, :cond_11

    #@14d
    move-object v7, p2

    #@14e
    .line 172
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@150
    .line 174
    .local v7, "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@152
    if-eqz v9, :cond_f

    #@154
    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v9

    #@15d
    const-string/jumbo v10, "BER Constructed Octet String"

    #@160
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v9

    #@164
    const-string/jumbo v10, "["

    #@167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v9

    #@16b
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16e
    move-result-object v10

    #@16f
    array-length v10, v10

    #@170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v9

    #@174
    const-string/jumbo v10, "] "

    #@177
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v9

    #@17b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v9

    #@17f
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@182
    .line 182
    :goto_6
    if-eqz p1, :cond_10

    #@184
    .line 184
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@187
    move-result-object v9

    #@188
    invoke-static {p0, v9}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    #@18b
    move-result-object v9

    #@18c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18f
    goto/16 :goto_3

    #@191
    .line 180
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v9

    #@19a
    const-string/jumbo v10, "DER Octet String"

    #@19d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v9

    #@1a1
    const-string/jumbo v10, "["

    #@1a4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v9

    #@1a8
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1ab
    move-result-object v10

    #@1ac
    array-length v10, v10

    #@1ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v9

    #@1b1
    const-string/jumbo v10, "] "

    #@1b4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v9

    #@1b8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v9

    #@1bc
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1bf
    goto :goto_6

    #@1c0
    .line 188
    :cond_10
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c3
    goto/16 :goto_3

    #@1c5
    .line 191
    .end local v7    # "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_11
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c7
    if-eqz v9, :cond_12

    #@1c9
    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v9

    #@1d2
    const-string/jumbo v10, "ObjectIdentifier("

    #@1d5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v9

    #@1d9
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1db
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1de
    move-result-object v10

    #@1df
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v9

    #@1e3
    const-string/jumbo v10, ")"

    #@1e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v9

    #@1ea
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v9

    #@1ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f1
    move-result-object v9

    #@1f2
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f5
    goto/16 :goto_3

    #@1f7
    .line 195
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_12
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1f9
    if-eqz v9, :cond_13

    #@1fb
    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    #@1fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@200
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v9

    #@204
    const-string/jumbo v10, "Boolean("

    #@207
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v9

    #@20b
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@20d
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@210
    move-result v10

    #@211
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@214
    move-result-object v9

    #@215
    const-string/jumbo v10, ")"

    #@218
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v9

    #@21c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v9

    #@220
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v9

    #@224
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@227
    goto/16 :goto_3

    #@229
    .line 199
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_13
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@22b
    if-eqz v9, :cond_14

    #@22d
    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    #@22f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@232
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v9

    #@236
    const-string/jumbo v10, "Integer("

    #@239
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v9

    #@23d
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@23f
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@242
    move-result-object v10

    #@243
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v9

    #@247
    const-string/jumbo v10, ")"

    #@24a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v9

    #@24e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v9

    #@252
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@255
    move-result-object v9

    #@256
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@259
    goto/16 :goto_3

    #@25b
    .line 203
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_14
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@25d
    if-eqz v9, :cond_16

    #@25f
    move-object v0, p2

    #@260
    .line 205
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@262
    .line 206
    .local v0, "bt":Lcom/android/org/bouncycastle/asn1/DERBitString;
    new-instance v9, Ljava/lang/StringBuilder;

    #@264
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v9

    #@26b
    const-string/jumbo v10, "DER Bit String"

    #@26e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v9

    #@272
    const-string/jumbo v10, "["

    #@275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v9

    #@279
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@27c
    move-result-object v10

    #@27d
    array-length v10, v10

    #@27e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@281
    move-result-object v9

    #@282
    const-string/jumbo v10, ", "

    #@285
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v9

    #@289
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@28c
    move-result v10

    #@28d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@290
    move-result-object v9

    #@291
    const-string/jumbo v10, "] "

    #@294
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v9

    #@298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29b
    move-result-object v9

    #@29c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29f
    .line 207
    if-eqz p1, :cond_15

    #@2a1
    .line 209
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@2a4
    move-result-object v9

    #@2a5
    invoke-static {p0, v9}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    #@2a8
    move-result-object v9

    #@2a9
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2ac
    goto/16 :goto_3

    #@2ae
    .line 213
    :cond_15
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b1
    goto/16 :goto_3

    #@2b3
    .line 216
    .end local v0    # "bt":Lcom/android/org/bouncycastle/asn1/DERBitString;
    :cond_16
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@2b5
    if-eqz v9, :cond_17

    #@2b7
    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v9

    #@2c0
    const-string/jumbo v10, "IA5String("

    #@2c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v9

    #@2c7
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@2c9
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@2cc
    move-result-object v10

    #@2cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v9

    #@2d1
    const-string/jumbo v10, ") "

    #@2d4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v9

    #@2d8
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v9

    #@2dc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2df
    move-result-object v9

    #@2e0
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e3
    goto/16 :goto_3

    #@2e5
    .line 220
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_17
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@2e7
    if-eqz v9, :cond_18

    #@2e9
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    #@2eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2ee
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v9

    #@2f2
    const-string/jumbo v10, "UTF8String("

    #@2f5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v9

    #@2f9
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@2fb
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    #@2fe
    move-result-object v10

    #@2ff
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v9

    #@303
    const-string/jumbo v10, ") "

    #@306
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v9

    #@30a
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v9

    #@30e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@311
    move-result-object v9

    #@312
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@315
    goto/16 :goto_3

    #@317
    .line 224
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_18
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@319
    if-eqz v9, :cond_19

    #@31b
    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    #@31d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@320
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-result-object v9

    #@324
    const-string/jumbo v10, "PrintableString("

    #@327
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v9

    #@32b
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@32d
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    #@330
    move-result-object v10

    #@331
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@334
    move-result-object v9

    #@335
    const-string/jumbo v10, ") "

    #@338
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v9

    #@33c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v9

    #@340
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v9

    #@344
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@347
    goto/16 :goto_3

    #@349
    .line 228
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    #@34b
    if-eqz v9, :cond_1a

    #@34d
    .line 230
    new-instance v9, Ljava/lang/StringBuilder;

    #@34f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@352
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@355
    move-result-object v9

    #@356
    const-string/jumbo v10, "VisibleString("

    #@359
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35c
    move-result-object v9

    #@35d
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    #@35f
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    #@362
    move-result-object v10

    #@363
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@366
    move-result-object v9

    #@367
    const-string/jumbo v10, ") "

    #@36a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v9

    #@36e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@371
    move-result-object v9

    #@372
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@375
    move-result-object v9

    #@376
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@379
    goto/16 :goto_3

    #@37b
    .line 232
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@37d
    if-eqz v9, :cond_1b

    #@37f
    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    #@381
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@384
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@387
    move-result-object v9

    #@388
    const-string/jumbo v10, "BMPString("

    #@38b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    move-result-object v9

    #@38f
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@391
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@394
    move-result-object v10

    #@395
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v9

    #@399
    const-string/jumbo v10, ") "

    #@39c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v9

    #@3a0
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a3
    move-result-object v9

    #@3a4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a7
    move-result-object v9

    #@3a8
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3ab
    goto/16 :goto_3

    #@3ad
    .line 236
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1b
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@3af
    if-eqz v9, :cond_1c

    #@3b1
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    #@3b3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b6
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v9

    #@3ba
    const-string/jumbo v10, "T61String("

    #@3bd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c0
    move-result-object v9

    #@3c1
    check-cast p2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@3c3
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    #@3c6
    move-result-object v10

    #@3c7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ca
    move-result-object v9

    #@3cb
    const-string/jumbo v10, ") "

    #@3ce
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d1
    move-result-object v9

    #@3d2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d5
    move-result-object v9

    #@3d6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d9
    move-result-object v9

    #@3da
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3dd
    goto/16 :goto_3

    #@3df
    .line 240
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1c
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@3e1
    if-eqz v9, :cond_1d

    #@3e3
    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3e8
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3eb
    move-result-object v9

    #@3ec
    const-string/jumbo v10, "UTCTime("

    #@3ef
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v9

    #@3f3
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@3f5
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    #@3f8
    move-result-object v10

    #@3f9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fc
    move-result-object v9

    #@3fd
    const-string/jumbo v10, ") "

    #@400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@403
    move-result-object v9

    #@404
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@407
    move-result-object v9

    #@408
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40b
    move-result-object v9

    #@40c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40f
    goto/16 :goto_3

    #@411
    .line 244
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1d
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@413
    if-eqz v9, :cond_1e

    #@415
    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    #@417
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41a
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41d
    move-result-object v9

    #@41e
    const-string/jumbo v10, "GeneralizedTime("

    #@421
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@424
    move-result-object v9

    #@425
    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@427
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    #@42a
    move-result-object v10

    #@42b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v9

    #@42f
    const-string/jumbo v10, ") "

    #@432
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@435
    move-result-object v9

    #@436
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@439
    move-result-object v9

    #@43a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43d
    move-result-object v9

    #@43e
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@441
    goto/16 :goto_3

    #@443
    .line 248
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1e
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;

    #@445
    if-eqz v9, :cond_1f

    #@447
    .line 250
    const-string/jumbo v9, "BER"

    #@44a
    invoke-static {v9, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    #@44d
    move-result-object v9

    #@44e
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@451
    goto/16 :goto_3

    #@453
    .line 252
    :cond_1f
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@455
    if-eqz v9, :cond_20

    #@457
    .line 254
    const-string/jumbo v9, "DER"

    #@45a
    invoke-static {v9, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    #@45d
    move-result-object v9

    #@45e
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@461
    goto/16 :goto_3

    #@463
    .line 256
    :cond_20
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@465
    if-eqz v9, :cond_21

    #@467
    move-object v2, p2

    #@468
    .line 258
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@46a
    .line 259
    .local v2, "en":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    new-instance v9, Ljava/lang/StringBuilder;

    #@46c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@472
    move-result-object v9

    #@473
    const-string/jumbo v10, "DER Enumerated("

    #@476
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v9

    #@47a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@47d
    move-result-object v10

    #@47e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@481
    move-result-object v9

    #@482
    const-string/jumbo v10, ")"

    #@485
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@488
    move-result-object v9

    #@489
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v9

    #@48d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@490
    move-result-object v9

    #@491
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@494
    goto/16 :goto_3

    #@496
    .line 261
    .end local v2    # "en":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_21
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@498
    if-eqz v9, :cond_25

    #@49a
    move-object v3, p2

    #@49b
    .line 263
    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@49d
    .line 264
    .local v3, "ext":Lcom/android/org/bouncycastle/asn1/DERExternal;
    new-instance v9, Ljava/lang/StringBuilder;

    #@49f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4a2
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a5
    move-result-object v9

    #@4a6
    const-string/jumbo v10, "External "

    #@4a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v9

    #@4ad
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b0
    move-result-object v9

    #@4b1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b4
    move-result-object v9

    #@4b5
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b8
    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    #@4ba
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4bd
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v9

    #@4c1
    const-string/jumbo v10, "    "

    #@4c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c7
    move-result-object v9

    #@4c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cb
    move-result-object v8

    #@4cc
    .line 266
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4cf
    move-result-object v9

    #@4d0
    if-eqz v9, :cond_22

    #@4d2
    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v9

    #@4db
    const-string/jumbo v10, "Direct Reference: "

    #@4de
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v9

    #@4e2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e5
    move-result-object v10

    #@4e6
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4e9
    move-result-object v10

    #@4ea
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v9

    #@4ee
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f1
    move-result-object v9

    #@4f2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f5
    move-result-object v9

    #@4f6
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f9
    .line 270
    :cond_22
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4fc
    move-result-object v9

    #@4fd
    if-eqz v9, :cond_23

    #@4ff
    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    #@501
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@504
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v9

    #@508
    const-string/jumbo v10, "Indirect Reference: "

    #@50b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v9

    #@50f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@512
    move-result-object v10

    #@513
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->toString()Ljava/lang/String;

    #@516
    move-result-object v10

    #@517
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v9

    #@51b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51e
    move-result-object v9

    #@51f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@522
    move-result-object v9

    #@523
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@526
    .line 274
    :cond_23
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@529
    move-result-object v9

    #@52a
    if-eqz v9, :cond_24

    #@52c
    .line 276
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@52f
    move-result-object v9

    #@530
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@533
    .line 278
    :cond_24
    new-instance v9, Ljava/lang/StringBuilder;

    #@535
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@538
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53b
    move-result-object v9

    #@53c
    const-string/jumbo v10, "Encoding: "

    #@53f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@542
    move-result-object v9

    #@543
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getEncoding()I

    #@546
    move-result v10

    #@547
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v9

    #@54b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v9

    #@54f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@552
    move-result-object v9

    #@553
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@556
    .line 279
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@559
    move-result-object v9

    #@55a
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@55d
    goto/16 :goto_3

    #@55f
    .line 283
    .end local v3    # "ext":Lcom/android/org/bouncycastle/asn1/DERExternal;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_25
    new-instance v9, Ljava/lang/StringBuilder;

    #@561
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@564
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@567
    move-result-object v9

    #@568
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toString()Ljava/lang/String;

    #@56b
    move-result-object v10

    #@56c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56f
    move-result-object v9

    #@570
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@573
    move-result-object v9

    #@574
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@577
    move-result-object v9

    #@578
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57b
    goto/16 :goto_3
.end method

.method private static calculateAscString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 393
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v1, p1

    #@6
    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    #@8
    if-eq v1, v2, :cond_1

    #@a
    .line 395
    aget-byte v2, p0, v1

    #@c
    const/16 v3, 0x20

    #@e
    if-lt v2, v3, :cond_0

    #@10
    aget-byte v2, p0, v1

    #@12
    const/16 v3, 0x7e

    #@14
    if-gt v2, v3, :cond_0

    #@16
    .line 397
    aget-byte v2, p0, v1

    #@18
    int-to-char v2, v2

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    .line 393
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 401
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2
.end method

.method public static dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 322
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "verbose"    # Z

    #@0
    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 338
    .local v0, "buf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 340
    const-string/jumbo v1, ""

    #@c
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v1, p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@11
    .line 351
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 342
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 344
    const-string/jumbo v1, ""

    #@1d
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, p1, v2, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@26
    goto :goto_0

    #@27
    .line 348
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "unknown object type "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method private static dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p0, "indent"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 356
    const-string/jumbo v4, "line.separator"

    #@5
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 357
    .local v3, "nl":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@e
    .line 359
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, "    "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 362
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@27
    if-ge v1, v4, :cond_2

    #@29
    .line 364
    array-length v4, p1

    #@2a
    sub-int/2addr v4, v1

    #@2b
    if-le v4, v6, :cond_0

    #@2d
    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 367
    new-instance v4, Ljava/lang/String;

    #@32
    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@35
    move-result-object v5

    #@36
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    #@39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 368
    const-string/jumbo v4, "    "

    #@3f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 369
    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 370
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 362
    :goto_1
    add-int/lit8 v1, v1, 0x20

    #@4e
    goto :goto_0

    #@4f
    .line 374
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 375
    new-instance v4, Ljava/lang/String;

    #@54
    array-length v5, p1

    #@55
    sub-int/2addr v5, v1

    #@56
    invoke-static {p1, v1, v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@59
    move-result-object v5

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    #@5d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    .line 376
    array-length v4, p1

    #@61
    sub-int v2, v4, v1

    #@63
    .local v2, "j":I
    :goto_2
    if-eq v2, v6, :cond_1

    #@65
    .line 378
    const-string/jumbo v4, "  "

    #@68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 376
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 380
    :cond_1
    const-string/jumbo v4, "    "

    #@71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 381
    array-length v4, p1

    #@75
    sub-int/2addr v4, v1

    #@76
    invoke-static {p1, v1, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    goto :goto_1

    #@81
    .line 386
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    return-object v4
.end method

.method private static outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "verbose"    # Z
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "nl"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v0, p3

    #@1
    .line 289
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@3
    .line 290
    .local v0, "app":Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    new-instance v1, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 292
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 296
    const/16 v5, 0x10

    #@10
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v5

    #@14
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@17
    move-result-object v4

    #@18
    .line 297
    .local v4, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, " ApplicationSpecific["

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    const-string/jumbo v6, "]"

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 298
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@49
    move-result-object v3

    #@4a
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_0

    #@50
    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    const-string/jumbo v6, "    "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@67
    move-result-object v5

    #@68
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6a
    invoke-static {v6, p2, v5, v1}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    goto :goto_0

    #@6e
    .line 304
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    #@6f
    .line 305
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@72
    .line 307
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    return-object v5

    #@77
    .line 310
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    const-string/jumbo v6, " ApplicationSpecific["

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    #@8e
    move-result v6

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    const-string/jumbo v6, "] ("

    #@96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    new-instance v6, Ljava/lang/String;

    #@9c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    #@9f
    move-result-object v7

    #@a0
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@a3
    move-result-object v7

    #@a4
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    #@a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    const-string/jumbo v6, ")"

    #@ae
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    return-object v5
.end method
