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
    .line 41
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
    .line 57
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 58
    .local v4, "nl":Ljava/lang/String;
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    if-eqz v9, :cond_5

    #@8
    move-object v9, p2

    #@9
    .line 60
    nop

    #@a
    nop

    #@b
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    .line 61
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v9, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    const-string/jumbo v10, "    "

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 63
    .local v8, "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 64
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@28
    if-eqz v9, :cond_1

    #@2a
    .line 66
    const-string/jumbo v9, "BER Sequence"

    #@2d
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 77
    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_7

    #@39
    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    .line 83
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_0

    #@3f
    sget-object v9, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@41
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_3

    #@47
    .line 85
    :cond_0
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 86
    const-string/jumbo v9, "NULL"

    #@4d
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 87
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    goto :goto_1

    #@54
    .line 68
    .end local v6    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@56
    if-eqz v9, :cond_2

    #@58
    .line 70
    const-string/jumbo v9, "DER Sequence"

    #@5b
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    goto :goto_0

    #@5f
    .line 74
    :cond_2
    const-string/jumbo v9, "Sequence"

    #@62
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    goto :goto_0

    #@66
    .line 89
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v9, v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@68
    if-eqz v9, :cond_4

    #@6a
    .line 91
    nop

    #@6b
    nop

    #@6c
    .end local v6    # "o":Ljava/lang/Object;
    invoke-static {v8, p1, v6, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@6f
    goto :goto_1

    #@70
    .line 95
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_4
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@72
    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@75
    move-result-object v9

    #@76
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@79
    goto :goto_1

    #@7a
    .line 99
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_5
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@7c
    if-eqz v9, :cond_a

    #@7e
    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    const-string/jumbo v10, "    "

    #@8a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    .line 103
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@95
    .line 104
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@97
    if-eqz v9, :cond_8

    #@99
    .line 106
    const-string/jumbo v9, "BER Tagged ["

    #@9c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    :goto_2
    move-object v5, p2

    #@a0
    .line 113
    nop

    #@a1
    nop

    #@a2
    .line 115
    .local v5, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@a5
    move-result v9

    #@a6
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ad
    .line 116
    const/16 v9, 0x5d

    #@af
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b2
    .line 118
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@b5
    move-result v9

    #@b6
    if-nez v9, :cond_6

    #@b8
    .line 120
    const-string/jumbo v9, " IMPLICIT "

    #@bb
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    .line 123
    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c1
    .line 125
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isEmpty()Z

    #@c4
    move-result v9

    #@c5
    if-eqz v9, :cond_9

    #@c7
    .line 127
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    .line 128
    const-string/jumbo v9, "EMPTY"

    #@cd
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d0
    .line 129
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d3
    .line 55
    .end local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v8    # "tab":Ljava/lang/String;
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_7
    :goto_3
    return-void

    #@d4
    .line 110
    .restart local v8    # "tab":Ljava/lang/String;
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_8
    const-string/jumbo v9, "Tagged ["

    #@d7
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    goto :goto_2

    #@db
    .line 133
    .restart local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@de
    move-result-object v9

    #@df
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@e2
    goto :goto_3

    #@e3
    .line 136
    .end local v5    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_a
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e5
    if-eqz v9, :cond_e

    #@e7
    move-object v9, p2

    #@e8
    .line 138
    nop

    #@e9
    nop

    #@ea
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@ed
    move-result-object v1

    #@ee
    .line 139
    .restart local v1    # "e":Ljava/util/Enumeration;
    new-instance v9, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    const-string/jumbo v10, "    "

    #@fa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v8

    #@102
    .line 141
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@105
    .line 143
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@107
    if-eqz v9, :cond_b

    #@109
    .line 145
    const-string/jumbo v9, "BER Set"

    #@10c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10f
    .line 152
    :goto_4
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@112
    .line 154
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@115
    move-result v9

    #@116
    if-eqz v9, :cond_7

    #@118
    .line 156
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11b
    move-result-object v6

    #@11c
    .line 158
    .restart local v6    # "o":Ljava/lang/Object;
    if-nez v6, :cond_c

    #@11e
    .line 160
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@121
    .line 161
    const-string/jumbo v9, "NULL"

    #@124
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@127
    .line 162
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12a
    goto :goto_5

    #@12b
    .line 149
    .end local v6    # "o":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v9, "DER Set"

    #@12e
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@131
    goto :goto_4

    #@132
    .line 164
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_c
    instance-of v9, v6, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@134
    if-eqz v9, :cond_d

    #@136
    .line 166
    nop

    #@137
    nop

    #@138
    .end local v6    # "o":Ljava/lang/Object;
    invoke-static {v8, p1, v6, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@13b
    goto :goto_5

    #@13c
    .line 170
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_d
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13e
    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@141
    move-result-object v9

    #@142
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@145
    goto :goto_5

    #@146
    .line 174
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_e
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@148
    if-eqz v9, :cond_11

    #@14a
    move-object v7, p2

    #@14b
    .line 176
    nop

    #@14c
    nop

    #@14d
    .line 178
    .local v7, "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@14f
    if-eqz v9, :cond_f

    #@151
    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v9

    #@15a
    const-string/jumbo v10, "BER Constructed Octet String"

    #@15d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v9

    #@161
    const-string/jumbo v10, "["

    #@164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v9

    #@168
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16b
    move-result-object v10

    #@16c
    array-length v10, v10

    #@16d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@170
    move-result-object v9

    #@171
    const-string/jumbo v10, "] "

    #@174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v9

    #@178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v9

    #@17c
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17f
    .line 186
    :goto_6
    if-eqz p1, :cond_10

    #@181
    .line 188
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@184
    move-result-object v9

    #@185
    invoke-static {p0, v9}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    #@188
    move-result-object v9

    #@189
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18c
    goto/16 :goto_3

    #@18e
    .line 184
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v9

    #@197
    const-string/jumbo v10, "DER Octet String"

    #@19a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v9

    #@19e
    const-string/jumbo v10, "["

    #@1a1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v9

    #@1a5
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1a8
    move-result-object v10

    #@1a9
    array-length v10, v10

    #@1aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v9

    #@1ae
    const-string/jumbo v10, "] "

    #@1b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v9

    #@1b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v9

    #@1b9
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1bc
    goto :goto_6

    #@1bd
    .line 192
    :cond_10
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c0
    goto/16 :goto_3

    #@1c2
    .line 195
    .end local v7    # "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_11
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c4
    if-eqz v9, :cond_12

    #@1c6
    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v9

    #@1cf
    const-string/jumbo v10, "ObjectIdentifier("

    #@1d2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v9

    #@1d6
    nop

    #@1d7
    nop

    #@1d8
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1db
    move-result-object v10

    #@1dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v9

    #@1e0
    const-string/jumbo v10, ")"

    #@1e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v9

    #@1e7
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v9

    #@1eb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v9

    #@1ef
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f2
    goto/16 :goto_3

    #@1f4
    .line 199
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_12
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1f6
    if-eqz v9, :cond_13

    #@1f8
    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    #@1fa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1fd
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v9

    #@201
    const-string/jumbo v10, "Boolean("

    #@204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v9

    #@208
    nop

    #@209
    nop

    #@20a
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@20d
    move-result v10

    #@20e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@211
    move-result-object v9

    #@212
    const-string/jumbo v10, ")"

    #@215
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v9

    #@219
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v9

    #@21d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object v9

    #@221
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@224
    goto/16 :goto_3

    #@226
    .line 203
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_13
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@228
    if-eqz v9, :cond_14

    #@22a
    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v9

    #@233
    const-string/jumbo v10, "Integer("

    #@236
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v9

    #@23a
    nop

    #@23b
    nop

    #@23c
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@23f
    move-result-object v10

    #@240
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v9

    #@244
    const-string/jumbo v10, ")"

    #@247
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v9

    #@24b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v9

    #@24f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v9

    #@253
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@256
    goto/16 :goto_3

    #@258
    .line 207
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_14
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@25a
    if-eqz v9, :cond_16

    #@25c
    move-object v0, p2

    #@25d
    .line 209
    nop

    #@25e
    nop

    #@25f
    .line 210
    .local v0, "bt":Lcom/android/org/bouncycastle/asn1/DERBitString;
    new-instance v9, Ljava/lang/StringBuilder;

    #@261
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@264
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v9

    #@268
    const-string/jumbo v10, "DER Bit String"

    #@26b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v9

    #@26f
    const-string/jumbo v10, "["

    #@272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v9

    #@276
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@279
    move-result-object v10

    #@27a
    array-length v10, v10

    #@27b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v9

    #@27f
    const-string/jumbo v10, ", "

    #@282
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v9

    #@286
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    #@289
    move-result v10

    #@28a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v9

    #@28e
    const-string/jumbo v10, "] "

    #@291
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v9

    #@295
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v9

    #@299
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29c
    .line 211
    if-eqz p1, :cond_15

    #@29e
    .line 213
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@2a1
    move-result-object v9

    #@2a2
    invoke-static {p0, v9}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    #@2a5
    move-result-object v9

    #@2a6
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a9
    goto/16 :goto_3

    #@2ab
    .line 217
    :cond_15
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2ae
    goto/16 :goto_3

    #@2b0
    .line 220
    .end local v0    # "bt":Lcom/android/org/bouncycastle/asn1/DERBitString;
    :cond_16
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@2b2
    if-eqz v9, :cond_17

    #@2b4
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    #@2b6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2b9
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v9

    #@2bd
    const-string/jumbo v10, "IA5String("

    #@2c0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v9

    #@2c4
    nop

    #@2c5
    nop

    #@2c6
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@2c9
    move-result-object v10

    #@2ca
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v9

    #@2ce
    const-string/jumbo v10, ") "

    #@2d1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v9

    #@2d5
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v9

    #@2d9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dc
    move-result-object v9

    #@2dd
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e0
    goto/16 :goto_3

    #@2e2
    .line 224
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_17
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@2e4
    if-eqz v9, :cond_18

    #@2e6
    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2eb
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v9

    #@2ef
    const-string/jumbo v10, "UTF8String("

    #@2f2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v9

    #@2f6
    nop

    #@2f7
    nop

    #@2f8
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    #@2fb
    move-result-object v10

    #@2fc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v9

    #@300
    const-string/jumbo v10, ") "

    #@303
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v9

    #@307
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v9

    #@30b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30e
    move-result-object v9

    #@30f
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@312
    goto/16 :goto_3

    #@314
    .line 228
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_18
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@316
    if-eqz v9, :cond_19

    #@318
    .line 230
    new-instance v9, Ljava/lang/StringBuilder;

    #@31a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31d
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v9

    #@321
    const-string/jumbo v10, "PrintableString("

    #@324
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v9

    #@328
    nop

    #@329
    nop

    #@32a
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    #@32d
    move-result-object v10

    #@32e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@331
    move-result-object v9

    #@332
    const-string/jumbo v10, ") "

    #@335
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@338
    move-result-object v9

    #@339
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v9

    #@33d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@340
    move-result-object v9

    #@341
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@344
    goto/16 :goto_3

    #@346
    .line 232
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    #@348
    if-eqz v9, :cond_1a

    #@34a
    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    #@34c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@352
    move-result-object v9

    #@353
    const-string/jumbo v10, "VisibleString("

    #@356
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@359
    move-result-object v9

    #@35a
    nop

    #@35b
    nop

    #@35c
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    #@35f
    move-result-object v10

    #@360
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v9

    #@364
    const-string/jumbo v10, ") "

    #@367
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v9

    #@36b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v9

    #@36f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@372
    move-result-object v9

    #@373
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@376
    goto/16 :goto_3

    #@378
    .line 236
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@37a
    if-eqz v9, :cond_1b

    #@37c
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    #@37e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@381
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v9

    #@385
    const-string/jumbo v10, "BMPString("

    #@388
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38b
    move-result-object v9

    #@38c
    nop

    #@38d
    nop

    #@38e
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@391
    move-result-object v10

    #@392
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v9

    #@396
    const-string/jumbo v10, ") "

    #@399
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v9

    #@39d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v9

    #@3a1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a4
    move-result-object v9

    #@3a5
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a8
    goto/16 :goto_3

    #@3aa
    .line 240
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1b
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@3ac
    if-eqz v9, :cond_1c

    #@3ae
    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    #@3b0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b3
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v9

    #@3b7
    const-string/jumbo v10, "T61String("

    #@3ba
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bd
    move-result-object v9

    #@3be
    nop

    #@3bf
    nop

    #@3c0
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    #@3c3
    move-result-object v10

    #@3c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c7
    move-result-object v9

    #@3c8
    const-string/jumbo v10, ") "

    #@3cb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v9

    #@3cf
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d2
    move-result-object v9

    #@3d3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d6
    move-result-object v9

    #@3d7
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3da
    goto/16 :goto_3

    #@3dc
    .line 244
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1c
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERGraphicString;

    #@3de
    if-eqz v9, :cond_1d

    #@3e0
    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3e5
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v9

    #@3e9
    const-string/jumbo v10, "GraphicString("

    #@3ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v9

    #@3f0
    nop

    #@3f1
    nop

    #@3f2
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERGraphicString;->getString()Ljava/lang/String;

    #@3f5
    move-result-object v10

    #@3f6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f9
    move-result-object v9

    #@3fa
    const-string/jumbo v10, ") "

    #@3fd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@400
    move-result-object v9

    #@401
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@404
    move-result-object v9

    #@405
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@408
    move-result-object v9

    #@409
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40c
    goto/16 :goto_3

    #@40e
    .line 248
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1d
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERVideotexString;

    #@410
    if-eqz v9, :cond_1e

    #@412
    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    #@414
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@417
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41a
    move-result-object v9

    #@41b
    const-string/jumbo v10, "VideotexString("

    #@41e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@421
    move-result-object v9

    #@422
    nop

    #@423
    nop

    #@424
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERVideotexString;->getString()Ljava/lang/String;

    #@427
    move-result-object v10

    #@428
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v9

    #@42c
    const-string/jumbo v10, ") "

    #@42f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@432
    move-result-object v9

    #@433
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@436
    move-result-object v9

    #@437
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43a
    move-result-object v9

    #@43b
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43e
    goto/16 :goto_3

    #@440
    .line 252
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1e
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@442
    if-eqz v9, :cond_1f

    #@444
    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    #@446
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@449
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44c
    move-result-object v9

    #@44d
    const-string/jumbo v10, "UTCTime("

    #@450
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v9

    #@454
    nop

    #@455
    nop

    #@456
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    #@459
    move-result-object v10

    #@45a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45d
    move-result-object v9

    #@45e
    const-string/jumbo v10, ") "

    #@461
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@464
    move-result-object v9

    #@465
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@468
    move-result-object v9

    #@469
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46c
    move-result-object v9

    #@46d
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@470
    goto/16 :goto_3

    #@472
    .line 256
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1f
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@474
    if-eqz v9, :cond_20

    #@476
    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    #@478
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@47b
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v9

    #@47f
    const-string/jumbo v10, "GeneralizedTime("

    #@482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@485
    move-result-object v9

    #@486
    nop

    #@487
    nop

    #@488
    .end local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    #@48b
    move-result-object v10

    #@48c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48f
    move-result-object v9

    #@490
    const-string/jumbo v10, ") "

    #@493
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v9

    #@497
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v9

    #@49b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49e
    move-result-object v9

    #@49f
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a2
    goto/16 :goto_3

    #@4a4
    .line 260
    .restart local p2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_20
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;

    #@4a6
    if-eqz v9, :cond_21

    #@4a8
    .line 262
    const-string/jumbo v9, "BER"

    #@4ab
    invoke-static {v9, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    #@4ae
    move-result-object v9

    #@4af
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b2
    goto/16 :goto_3

    #@4b4
    .line 264
    :cond_21
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@4b6
    if-eqz v9, :cond_22

    #@4b8
    .line 266
    const-string/jumbo v9, "DER"

    #@4bb
    invoke-static {v9, p0, p1, p2, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    #@4be
    move-result-object v9

    #@4bf
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c2
    goto/16 :goto_3

    #@4c4
    .line 268
    :cond_22
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@4c6
    if-eqz v9, :cond_23

    #@4c8
    move-object v2, p2

    #@4c9
    .line 270
    nop

    #@4ca
    nop

    #@4cb
    .line 271
    .local v2, "en":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    new-instance v9, Ljava/lang/StringBuilder;

    #@4cd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d0
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v9

    #@4d4
    const-string/jumbo v10, "DER Enumerated("

    #@4d7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v9

    #@4db
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@4de
    move-result-object v10

    #@4df
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e2
    move-result-object v9

    #@4e3
    const-string/jumbo v10, ")"

    #@4e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e9
    move-result-object v9

    #@4ea
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v9

    #@4ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f1
    move-result-object v9

    #@4f2
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f5
    goto/16 :goto_3

    #@4f7
    .line 273
    .end local v2    # "en":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_23
    instance-of v9, p2, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@4f9
    if-eqz v9, :cond_27

    #@4fb
    move-object v3, p2

    #@4fc
    .line 275
    nop

    #@4fd
    nop

    #@4fe
    .line 276
    .local v3, "ext":Lcom/android/org/bouncycastle/asn1/DERExternal;
    new-instance v9, Ljava/lang/StringBuilder;

    #@500
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@503
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    move-result-object v9

    #@507
    const-string/jumbo v10, "External "

    #@50a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50d
    move-result-object v9

    #@50e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v9

    #@512
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@515
    move-result-object v9

    #@516
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@519
    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    #@51b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@51e
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@521
    move-result-object v9

    #@522
    const-string/jumbo v10, "    "

    #@525
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v9

    #@529
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52c
    move-result-object v8

    #@52d
    .line 278
    .restart local v8    # "tab":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@530
    move-result-object v9

    #@531
    if-eqz v9, :cond_24

    #@533
    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    #@535
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@538
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53b
    move-result-object v9

    #@53c
    const-string/jumbo v10, "Direct Reference: "

    #@53f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@542
    move-result-object v9

    #@543
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@546
    move-result-object v10

    #@547
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@54a
    move-result-object v10

    #@54b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v9

    #@54f
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v9

    #@553
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@556
    move-result-object v9

    #@557
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55a
    .line 282
    :cond_24
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@55d
    move-result-object v9

    #@55e
    if-eqz v9, :cond_25

    #@560
    .line 284
    new-instance v9, Ljava/lang/StringBuilder;

    #@562
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@565
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@568
    move-result-object v9

    #@569
    const-string/jumbo v10, "Indirect Reference: "

    #@56c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56f
    move-result-object v9

    #@570
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@573
    move-result-object v10

    #@574
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->toString()Ljava/lang/String;

    #@577
    move-result-object v10

    #@578
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v9

    #@57c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57f
    move-result-object v9

    #@580
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@583
    move-result-object v9

    #@584
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@587
    .line 286
    :cond_25
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@58a
    move-result-object v9

    #@58b
    if-eqz v9, :cond_26

    #@58d
    .line 288
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@590
    move-result-object v9

    #@591
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@594
    .line 290
    :cond_26
    new-instance v9, Ljava/lang/StringBuilder;

    #@596
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@599
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59c
    move-result-object v9

    #@59d
    const-string/jumbo v10, "Encoding: "

    #@5a0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a3
    move-result-object v9

    #@5a4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getEncoding()I

    #@5a7
    move-result v10

    #@5a8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v9

    #@5ac
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5af
    move-result-object v9

    #@5b0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b3
    move-result-object v9

    #@5b4
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b7
    .line 291
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5ba
    move-result-object v9

    #@5bb
    invoke-static {v8, p1, v9, p3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@5be
    goto/16 :goto_3

    #@5c0
    .line 295
    .end local v3    # "ext":Lcom/android/org/bouncycastle/asn1/DERExternal;
    .end local v8    # "tab":Ljava/lang/String;
    :cond_27
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5c5
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c8
    move-result-object v9

    #@5c9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5cc
    move-result-object v10

    #@5cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    move-result-object v9

    #@5d1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d4
    move-result-object v9

    #@5d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d8
    move-result-object v9

    #@5d9
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5dc
    goto/16 :goto_3
.end method

.method private static calculateAscString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 405
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v1, p1

    #@6
    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    #@8
    if-eq v1, v2, :cond_1

    #@a
    .line 407
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
    .line 409
    aget-byte v2, p0, v1

    #@18
    int-to-char v2, v2

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 413
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
    .line 334
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
    .line 348
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 350
    .local v0, "buf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 352
    const-string/jumbo v1, ""

    #@c
    nop

    #@d
    nop

    #@e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v1, p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    #@11
    .line 363
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 354
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 356
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
    .line 360
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
    .line 368
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 369
    .local v3, "nl":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 371
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "    "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    .line 373
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 374
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@24
    if-ge v1, v4, :cond_2

    #@26
    .line 376
    array-length v4, p1

    #@27
    sub-int/2addr v4, v1

    #@28
    if-le v4, v6, :cond_0

    #@2a
    .line 378
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 379
    new-instance v4, Ljava/lang/String;

    #@2f
    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 380
    const-string/jumbo v4, "    "

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 381
    invoke-static {p1, v1, v6}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 374
    :goto_1
    add-int/lit8 v1, v1, 0x20

    #@4b
    goto :goto_0

    #@4c
    .line 386
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    .line 387
    new-instance v4, Ljava/lang/String;

    #@51
    array-length v5, p1

    #@52
    sub-int/2addr v5, v1

    #@53
    invoke-static {p1, v1, v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@56
    move-result-object v5

    #@57
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    #@5a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    .line 388
    array-length v4, p1

    #@5e
    sub-int v2, v4, v1

    #@60
    .local v2, "j":I
    :goto_2
    if-eq v2, v6, :cond_1

    #@62
    .line 390
    const-string/jumbo v4, "  "

    #@65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    .line 388
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 392
    :cond_1
    const-string/jumbo v4, "    "

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@71
    .line 393
    array-length v4, p1

    #@72
    sub-int/2addr v4, v1

    #@73
    invoke-static {p1, v1, v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    goto :goto_1

    #@7e
    .line 398
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
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
    .line 301
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    #@3
    move-result-object v0

    #@4
    .line 302
    .local v0, "app":Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    new-instance v1, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 304
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 308
    const/16 v5, 0x10

    #@11
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v5

    #@15
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@18
    move-result-object v4

    #@19
    .line 309
    .local v4, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, " ApplicationSpecific["

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    #@30
    move-result v6

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    const-string/jumbo v6, "]"

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 310
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@4a
    move-result-object v3

    #@4b
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_0

    #@51
    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    const-string/jumbo v6, "    "

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@68
    move-result-object v5

    #@69
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6b
    invoke-static {v6, p2, v5, v1}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    goto :goto_0

    #@6f
    .line 316
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    #@70
    .line 317
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@73
    .line 319
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    return-object v5

    #@78
    .line 322
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    const-string/jumbo v6, " ApplicationSpecific["

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    #@8f
    move-result v6

    #@90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    const-string/jumbo v6, "] ("

    #@97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    new-instance v6, Ljava/lang/String;

    #@9d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    #@a0
    move-result-object v7

    #@a1
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@a4
    move-result-object v7

    #@a5
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    #@a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    const-string/jumbo v6, ")"

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v5

    #@b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    return-object v5
.end method
