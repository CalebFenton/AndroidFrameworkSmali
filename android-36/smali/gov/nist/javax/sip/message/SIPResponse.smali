.class public final Lgov/nist/javax/sip/message/SIPResponse;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPResponse.java"

# interfaces
.implements Ljavax/sip/message/Response;
.implements Lgov/nist/javax/sip/message/ResponseExt;


# instance fields
.field protected greylist statusLine:Lgov/nist/javax/sip/header/StatusLine;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    .line 381
    return-void
.end method

.method public static greylist getReasonPhrase(I)Ljava/lang/String;
    .registers 2
    .param p0, "rc"    # I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "retval":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_c4

    .line 294
    const-string v0, "Unknown Status"

    goto/16 :goto_c2

    .line 286
    :sswitch_8
    const-string v0, "Session Not acceptable"

    .line 287
    goto/16 :goto_c2

    .line 282
    :sswitch_c
    const-string v0, "Does not exist anywhere"

    .line 283
    goto/16 :goto_c2

    .line 278
    :sswitch_10
    const-string v0, "Decline"

    .line 279
    goto/16 :goto_c2

    .line 274
    :sswitch_14
    const-string v0, "Busy everywhere"

    .line 275
    goto/16 :goto_c2

    .line 270
    :sswitch_18
    const-string v0, "Message Too Large"

    .line 271
    goto/16 :goto_c2

    .line 266
    :sswitch_1c
    const-string v0, "SIP version not supported"

    .line 267
    goto/16 :goto_c2

    .line 262
    :sswitch_20
    const-string v0, "Gateway timeout"

    .line 263
    goto/16 :goto_c2

    .line 258
    :sswitch_24
    const-string v0, "Service unavailable"

    .line 259
    goto/16 :goto_c2

    .line 254
    :sswitch_28
    const-string v0, "Bad gateway"

    .line 255
    goto/16 :goto_c2

    .line 250
    :sswitch_2c
    const-string v0, "Not implemented"

    .line 251
    goto/16 :goto_c2

    .line 242
    :sswitch_30
    const-string v0, "Server Internal Error"

    .line 243
    goto/16 :goto_c2

    .line 246
    :sswitch_34
    const-string v0, "Undecipherable"

    .line 247
    goto/16 :goto_c2

    .line 238
    :sswitch_38
    const-string v0, "Request Pending"

    .line 239
    goto/16 :goto_c2

    .line 234
    :sswitch_3c
    const-string v0, "Bad Event"

    .line 235
    goto/16 :goto_c2

    .line 230
    :sswitch_40
    const-string v0, "Not Acceptable here"

    .line 231
    goto/16 :goto_c2

    .line 225
    :sswitch_44
    const-string v0, "Request Terminated"

    .line 226
    goto/16 :goto_c2

    .line 221
    :sswitch_48
    const-string v0, "Busy here"

    .line 222
    goto/16 :goto_c2

    .line 217
    :sswitch_4c
    const-string v0, "Ambiguous"

    .line 218
    goto/16 :goto_c2

    .line 213
    :sswitch_50
    const-string v0, "Address incomplete"

    .line 214
    goto/16 :goto_c2

    .line 209
    :sswitch_54
    const-string v0, "Too many hops"

    .line 210
    goto/16 :goto_c2

    .line 205
    :sswitch_58
    const-string v0, "Loop detected"

    .line 206
    goto/16 :goto_c2

    .line 201
    :sswitch_5c
    const-string v0, "Call leg/Transaction does not exist"

    .line 202
    goto/16 :goto_c2

    .line 169
    :sswitch_60
    const-string v0, "Temporarily Unavailable"

    .line 170
    goto/16 :goto_c2

    .line 197
    :sswitch_64
    const-string v0, "Interval too brief"

    .line 198
    goto/16 :goto_c2

    .line 193
    :sswitch_68
    const-string v0, "Etension Required"

    .line 194
    goto/16 :goto_c2

    .line 189
    :sswitch_6c
    const-string v0, "Bad extension"

    .line 190
    goto/16 :goto_c2

    .line 185
    :sswitch_70
    const-string v0, "Unsupported URI Scheme"

    .line 186
    goto/16 :goto_c2

    .line 181
    :sswitch_74
    const-string v0, "Unsupported media type"

    .line 182
    goto :goto_c2

    .line 177
    :sswitch_77
    const-string v0, "Request-URI too large"

    .line 178
    goto :goto_c2

    .line 173
    :sswitch_7a
    const-string v0, "Request entity too large"

    .line 174
    goto :goto_c2

    .line 290
    :sswitch_7d
    const-string v0, "Conditional request failed"

    .line 291
    goto :goto_c2

    .line 165
    :sswitch_80
    const-string v0, "Gone"

    .line 166
    goto :goto_c2

    .line 161
    :sswitch_83
    const-string v0, "Request timeout"

    .line 162
    goto :goto_c2

    .line 157
    :sswitch_86
    const-string v0, "Proxy Authentication required"

    .line 158
    goto :goto_c2

    .line 153
    :sswitch_89
    const-string v0, "Not acceptable"

    .line 154
    goto :goto_c2

    .line 149
    :sswitch_8c
    const-string v0, "Method not allowed"

    .line 150
    goto :goto_c2

    .line 145
    :sswitch_8f
    const-string v0, "Not found"

    .line 146
    goto :goto_c2

    .line 141
    :sswitch_92
    const-string v0, "Forbidden"

    .line 142
    goto :goto_c2

    .line 137
    :sswitch_95
    const-string v0, "Payment required"

    .line 138
    goto :goto_c2

    .line 133
    :sswitch_98
    const-string v0, "Unauthorized"

    .line 134
    goto :goto_c2

    .line 129
    :sswitch_9b
    const-string v0, "Bad request"

    .line 130
    goto :goto_c2

    .line 125
    :sswitch_9e
    const-string v0, "Alternative service"

    .line 126
    goto :goto_c2

    .line 121
    :sswitch_a1
    const-string v0, "Use proxy"

    .line 122
    goto :goto_c2

    .line 117
    :sswitch_a4
    const-string v0, "Moved Temporarily"

    .line 118
    goto :goto_c2

    .line 113
    :sswitch_a7
    const-string v0, "Moved permanently"

    .line 114
    goto :goto_c2

    .line 109
    :sswitch_aa
    const-string v0, "Multiple choices"

    .line 110
    goto :goto_c2

    .line 105
    :sswitch_ad
    const-string v0, "Accepted"

    .line 106
    goto :goto_c2

    .line 101
    :sswitch_b0
    const-string v0, "OK"

    .line 102
    goto :goto_c2

    .line 97
    :sswitch_b3
    const-string v0, "Session progress"

    .line 98
    goto :goto_c2

    .line 93
    :sswitch_b6
    const-string v0, "Queued"

    .line 94
    goto :goto_c2

    .line 89
    :sswitch_b9
    const-string v0, "Call is being forwarded"

    .line 90
    goto :goto_c2

    .line 85
    :sswitch_bc
    const-string v0, "Ringing"

    .line 86
    goto :goto_c2

    .line 81
    :sswitch_bf
    const-string v0, "Trying"

    .line 82
    nop

    .line 297
    :goto_c2
    return-object v0

    nop

    :sswitch_data_c4
    .sparse-switch
        0x64 -> :sswitch_bf
        0xb4 -> :sswitch_bc
        0xb5 -> :sswitch_b9
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b3
        0xc8 -> :sswitch_b0
        0xca -> :sswitch_ad
        0x12c -> :sswitch_aa
        0x12d -> :sswitch_a7
        0x12e -> :sswitch_a4
        0x131 -> :sswitch_a1
        0x17c -> :sswitch_9e
        0x190 -> :sswitch_9b
        0x191 -> :sswitch_98
        0x192 -> :sswitch_95
        0x193 -> :sswitch_92
        0x194 -> :sswitch_8f
        0x195 -> :sswitch_8c
        0x196 -> :sswitch_89
        0x197 -> :sswitch_86
        0x198 -> :sswitch_83
        0x19a -> :sswitch_80
        0x19c -> :sswitch_7d
        0x19d -> :sswitch_7a
        0x19e -> :sswitch_77
        0x19f -> :sswitch_74
        0x1a0 -> :sswitch_70
        0x1a4 -> :sswitch_6c
        0x1a5 -> :sswitch_68
        0x1a7 -> :sswitch_64
        0x1e0 -> :sswitch_60
        0x1e1 -> :sswitch_5c
        0x1e2 -> :sswitch_58
        0x1e3 -> :sswitch_54
        0x1e4 -> :sswitch_50
        0x1e5 -> :sswitch_4c
        0x1e6 -> :sswitch_48
        0x1e7 -> :sswitch_44
        0x1e8 -> :sswitch_40
        0x1e9 -> :sswitch_3c
        0x1eb -> :sswitch_38
        0x1ed -> :sswitch_34
        0x1f4 -> :sswitch_30
        0x1f5 -> :sswitch_2c
        0x1f6 -> :sswitch_28
        0x1f7 -> :sswitch_24
        0x1f8 -> :sswitch_20
        0x1f9 -> :sswitch_1c
        0x201 -> :sswitch_18
        0x258 -> :sswitch_14
        0x25b -> :sswitch_10
        0x25c -> :sswitch_c
        0x25e -> :sswitch_8
    .end sparse-switch
.end method

.method public static greylist isFinalResponse(I)Z
    .registers 2
    .param p0, "rc"    # I

    .line 359
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private final greylist setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V
    .registers 5
    .param p1, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p2, "method"    # Ljava/lang/String;

    .line 628
    const-string v0, "ACK"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 629
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1b

    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .local v0, "branch":Ljava/lang/String;
    goto :goto_34

    .line 632
    .end local v0    # "branch":Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_34

    .line 634
    .end local v0    # "branch":Ljava/lang/String;
    :cond_24
    const-string v0, "CANCEL"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 635
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 639
    .restart local v0    # "branch":Ljava/lang/String;
    :goto_34
    :try_start_34
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/text/ParseException; {:try_start_34 .. :try_end_37} :catch_38

    .line 642
    goto :goto_3c

    .line 640
    :catch_38
    move-exception v1

    .line 641
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 643
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_3c
    return-void

    .line 636
    .end local v0    # "branch":Ljava/lang/String;
    :cond_3d
    return-void
.end method


# virtual methods
.method public greylist checkHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 411
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 414
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 417
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 420
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 425
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v2, 0x2bb

    if-gt v0, v2, :cond_28

    .line 429
    return-void

    .line 426
    :cond_28
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 421
    :cond_45
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Call-ID Is missing "

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 418
    :cond_4d
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Via Is missing "

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 415
    :cond_55
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "From Is missing "

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 412
    :cond_5d
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "To Is missing "

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 409
    :cond_65
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "CSeq Is missing "

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 482
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_14

    .line 483
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/StatusLine;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 484
    :cond_14
    return-object v0
.end method

.method public greylist createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 12
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/SipUri;
    .param p2, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p3, "cseq"    # Lgov/nist/javax/sip/header/CSeq;
    .param p4, "from"    # Lgov/nist/javax/sip/header/From;
    .param p5, "to"    # Lgov/nist/javax/sip/header/To;

    .line 683
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 684
    .local v0, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p3}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "method":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 688
    invoke-direct {p0, p2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 690
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 691
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getHeaders()Ljava/util/Iterator;

    move-result-object v2

    .line 692
    .local v2, "headerIterator":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_74

    .line 693
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 695
    .local v3, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPMessage;->isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v5

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ViaList;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/CSeq;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ContentType;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/RecordRouteList;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/RequireList;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ContactList;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_1c

    instance-of v5, v3, Ljavax/sip/header/ServerHeader;

    if-nez v5, :cond_1c

    instance-of v5, v3, Ljavax/sip/header/ReasonHeader;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lgov/nist/javax/sip/header/ReasonList;

    if-eqz v5, :cond_60

    .line 708
    goto :goto_1c

    .line 710
    :cond_60
    instance-of v5, v3, Lgov/nist/javax/sip/header/To;

    if-eqz v5, :cond_66

    .line 711
    move-object v3, p5

    goto :goto_6b

    .line 712
    :cond_66
    instance-of v5, v3, Lgov/nist/javax/sip/header/From;

    if-eqz v5, :cond_6b

    .line 713
    move-object v3, p4

    .line 715
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_6e
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 719
    goto :goto_73

    .line 716
    :catch_6f
    move-exception v4

    .line 718
    .local v4, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    .line 720
    .end local v3    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v4    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :goto_73
    goto :goto_1c

    .line 724
    :cond_74
    :try_start_74
    new-instance v3, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v5, 0x46

    invoke-direct {v3, v5}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_7f

    .line 727
    goto :goto_80

    .line 725
    :catch_7f
    move-exception v3

    .line 729
    :goto_80
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 730
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 732
    :cond_8d
    return-object v0
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 3

    .line 391
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "superstring":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    .line 393
    const-class v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 394
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_23

    .line 396
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 398
    :cond_23
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 399
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 3

    .line 438
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v0, :cond_20

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "retval":Ljava/lang/String;
    goto :goto_24

    .line 441
    .end local v0    # "retval":Ljava/lang/String;
    :cond_20
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0    # "retval":Ljava/lang/String;
    :goto_24
    return-object v0
.end method

.method public greylist encodeAsBytes(Ljava/lang/String;)[B
    .registers 8
    .param p1, "transport"    # Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "slbytes":[B
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_17

    .line 537
    :try_start_5
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_11} :catch_13

    move-object v0, v1

    .line 540
    goto :goto_17

    .line 538
    :catch_13
    move-exception v1

    .line 539
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 542
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_17
    :goto_17
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 543
    .local v1, "superbytes":[B
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 544
    .local v2, "retval":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    return-object v2
.end method

.method public greylist encodeMessage()Ljava/lang/String;
    .registers 3

    .line 452
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v0, :cond_20

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "retval":Ljava/lang/String;
    goto :goto_24

    .line 455
    .end local v0    # "retval":Ljava/lang/String;
    :cond_20
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "retval":Ljava/lang/String;
    :goto_24
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 494
    return v1

    .line 495
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 496
    .local v0, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/StatusLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public greylist getDialogId(Z)Ljava/lang/String;
    .registers 8
    .param p1, "isServer"    # Z

    .line 559
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 560
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 561
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/To;

    .line 562
    .local v2, "to":Lgov/nist/javax/sip/header/To;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, "retval":Ljava/lang/StringBuffer;
    const-string v4, ":"

    if-nez p1, :cond_40

    .line 565
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :cond_2f
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 576
    :cond_40
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_50
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :cond_60
    :goto_60
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public greylist getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "isServer"    # Z
    .param p2, "toTag"    # Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 591
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 592
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 593
    .local v2, "retval":Ljava/lang/StringBuffer;
    const-string v3, ":"

    if-nez p1, :cond_32

    .line 595
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_29
    if-eqz p2, :cond_4a

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 606
    :cond_32
    if-eqz p2, :cond_3a

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    :cond_3a
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    :cond_4a
    :goto_4a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getFirstLine()Ljava/lang/String;
    .registers 2

    .line 653
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_6

    .line 654
    const/4 v0, 0x0

    return-object v0

    .line 656
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 3

    .line 467
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    .line 469
    .local v0, "retval":Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_11

    .line 470
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 471
    :cond_11
    return-object v0
.end method

.method public greylist getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 351
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_14
    :goto_14
    const-string v0, ""

    return-object v0
.end method

.method public greylist getSIPVersion()Ljava/lang/String;
    .registers 2

    .line 664
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getStatusCode()I
    .registers 2

    .line 329
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public greylist getStatusLine()Lgov/nist/javax/sip/header/StatusLine;
    .registers 2

    .line 322
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    return-object v0
.end method

.method public greylist isFinalResponse()Z
    .registers 2

    .line 366
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "matchObj"    # Ljava/lang/Object;

    .line 505
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 506
    return v0

    .line 507
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 508
    return v2

    .line 509
    :cond_14
    if-ne p1, p0, :cond_17

    .line 510
    return v0

    .line 511
    :cond_17
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 513
    .local v1, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v3, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 514
    .local v3, "rline":Lgov/nist/javax/sip/header/StatusLine;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v4, :cond_23

    if-eqz v3, :cond_23

    .line 515
    return v2

    .line 516
    :cond_23
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-ne v4, v3, :cond_2c

    .line 517
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 520
    :cond_2c
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v5, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/StatusLine;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    return v0
.end method

.method public greylist setReasonPhrase(Ljava/lang/String;)V
    .registers 4
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 337
    if-eqz p1, :cond_13

    .line 339
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_d

    .line 340
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 341
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 342
    return-void

    .line 338
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad reason phrase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSIPVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "sipVersion"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public greylist setStatusCode(I)V
    .registers 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 310
    const/16 v0, 0x64

    if-lt p1, v0, :cond_19

    const/16 v0, 0x2bb

    if-gt p1, v0, :cond_19

    .line 312
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_13

    .line 313
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 314
    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 315
    return-void

    .line 311
    :cond_19
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad status code"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    .registers 2
    .param p1, "sl"    # Lgov/nist/javax/sip/header/StatusLine;

    .line 374
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    .line 375
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 668
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 669
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
