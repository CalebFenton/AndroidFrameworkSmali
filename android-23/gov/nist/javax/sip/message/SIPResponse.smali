.class public final Lgov/nist/javax/sip/message/SIPResponse;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPResponse.java"

# interfaces
.implements Ljavax/sip/message/Response;
.implements Lgov/nist/javax/sip/message/ResponseExt;


# instance fields
.field protected statusLine:Lgov/nist/javax/sip/header/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 380
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    #@3
    .line 379
    return-void
.end method

.method public static getReasonPhrase(I)Ljava/lang/String;
    .locals 1
    .param p0, "rc"    # I

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    .line 78
    .local v0, "retval":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 294
    const-string/jumbo v0, "Unknown Status"

    #@7
    .line 297
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    #@8
    .line 81
    .local v0, "retval":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "Trying"

    #@b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@c
    .line 85
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "Ringing"

    #@f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@10
    .line 89
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "Call is being forwarded"

    #@13
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@14
    .line 93
    .local v0, "retval":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "Queued"

    #@17
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 97
    .local v0, "retval":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "Session progress"

    #@1b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 101
    .local v0, "retval":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "OK"

    #@1f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@20
    .line 105
    .local v0, "retval":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "Accepted"

    #@23
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 109
    .local v0, "retval":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "Multiple choices"

    #@27
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 113
    .local v0, "retval":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "Moved permanently"

    #@2b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 117
    .local v0, "retval":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "Moved Temporarily"

    #@2f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 121
    .local v0, "retval":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "Use proxy"

    #@33
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 125
    .local v0, "retval":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v0, "Alternative service"

    #@37
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@38
    .line 129
    .local v0, "retval":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v0, "Bad request"

    #@3b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 133
    .local v0, "retval":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v0, "Unauthorized"

    #@3f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@40
    .line 137
    .local v0, "retval":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v0, "Payment required"

    #@43
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 141
    .local v0, "retval":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v0, "Forbidden"

    #@47
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 145
    .local v0, "retval":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v0, "Not found"

    #@4b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@4c
    .line 149
    .local v0, "retval":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v0, "Method not allowed"

    #@4f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 153
    .local v0, "retval":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v0, "Not acceptable"

    #@53
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@54
    .line 157
    .local v0, "retval":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v0, "Proxy Authentication required"

    #@57
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@58
    .line 161
    .local v0, "retval":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v0, "Request timeout"

    #@5b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 165
    .local v0, "retval":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v0, "Gone"

    #@5f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 169
    .local v0, "retval":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v0, "Temporarily Unavailable"

    #@63
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@64
    .line 173
    .local v0, "retval":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v0, "Request entity too large"

    #@67
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@68
    .line 177
    .local v0, "retval":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v0, "Request-URI too large"

    #@6b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@6c
    .line 181
    .local v0, "retval":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v0, "Unsupported media type"

    #@6f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 185
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v0, "Unsupported URI Scheme"

    #@73
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@74
    .line 189
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v0, "Bad extension"

    #@77
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@78
    .line 193
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v0, "Etension Required"

    #@7b
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@7c
    .line 197
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v0, "Interval too brief"

    #@7f
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@80
    .line 201
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v0, "Call leg/Transaction does not exist"

    #@83
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@84
    .line 205
    .local v0, "retval":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v0, "Loop detected"

    #@87
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    #@88
    .line 209
    .local v0, "retval":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v0, "Too many hops"

    #@8b
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@8d
    .line 213
    .local v0, "retval":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v0, "Address incomplete"

    #@90
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@92
    .line 217
    .local v0, "retval":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v0, "Ambiguous"

    #@95
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@97
    .line 221
    .local v0, "retval":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v0, "Busy here"

    #@9a
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@9c
    .line 225
    .local v0, "retval":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v0, "Request Terminated"

    #@9f
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@a1
    .line 230
    .local v0, "retval":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v0, "Not Acceptable here"

    #@a4
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@a6
    .line 234
    .local v0, "retval":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v0, "Bad Event"

    #@a9
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@ab
    .line 238
    .local v0, "retval":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v0, "Request Pending"

    #@ae
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@b0
    .line 242
    .local v0, "retval":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v0, "Server Internal Error"

    #@b3
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@b5
    .line 246
    .local v0, "retval":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v0, "Undecipherable"

    #@b8
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@ba
    .line 250
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v0, "Not implemented"

    #@bd
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@bf
    .line 254
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v0, "Bad gateway"

    #@c2
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@c4
    .line 258
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v0, "Service unavailable"

    #@c7
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@c9
    .line 262
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v0, "Gateway timeout"

    #@cc
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@ce
    .line 266
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v0, "SIP version not supported"

    #@d1
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@d3
    .line 270
    .local v0, "retval":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v0, "Message Too Large"

    #@d6
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@d8
    .line 274
    .local v0, "retval":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v0, "Busy everywhere"

    #@db
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@dd
    .line 278
    .local v0, "retval":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v0, "Decline"

    #@e0
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@e2
    .line 282
    .local v0, "retval":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v0, "Does not exist anywhere"

    #@e5
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@e7
    .line 286
    .local v0, "retval":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v0, "Session Not acceptable"

    #@ea
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@ec
    .line 290
    .local v0, "retval":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v0, "Conditional request failed"

    #@ef
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    #@f1
    .line 78
    nop

    #@f2
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xca -> :sswitch_6
        0x12c -> :sswitch_7
        0x12d -> :sswitch_8
        0x12e -> :sswitch_9
        0x131 -> :sswitch_a
        0x17c -> :sswitch_b
        0x190 -> :sswitch_c
        0x191 -> :sswitch_d
        0x192 -> :sswitch_e
        0x193 -> :sswitch_f
        0x194 -> :sswitch_10
        0x195 -> :sswitch_11
        0x196 -> :sswitch_12
        0x197 -> :sswitch_13
        0x198 -> :sswitch_14
        0x19a -> :sswitch_15
        0x19c -> :sswitch_34
        0x19d -> :sswitch_17
        0x19e -> :sswitch_18
        0x19f -> :sswitch_19
        0x1a0 -> :sswitch_1a
        0x1a4 -> :sswitch_1b
        0x1a5 -> :sswitch_1c
        0x1a7 -> :sswitch_1d
        0x1e0 -> :sswitch_16
        0x1e1 -> :sswitch_1e
        0x1e2 -> :sswitch_1f
        0x1e3 -> :sswitch_20
        0x1e4 -> :sswitch_21
        0x1e5 -> :sswitch_22
        0x1e6 -> :sswitch_23
        0x1e7 -> :sswitch_24
        0x1e8 -> :sswitch_25
        0x1e9 -> :sswitch_26
        0x1eb -> :sswitch_27
        0x1ed -> :sswitch_29
        0x1f4 -> :sswitch_28
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2e
        0x201 -> :sswitch_2f
        0x258 -> :sswitch_30
        0x25b -> :sswitch_31
        0x25c -> :sswitch_32
        0x25e -> :sswitch_33
    .end sparse-switch
.end method

.method public static isFinalResponse(I)Z
    .locals 2
    .param p0, "rc"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 359
    const/16 v1, 0xc8

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x2bc

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private final setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V
    .locals 4
    .param p1, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 628
    const-string/jumbo v2, "ACK"

    #@3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 629
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@b
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    #@e
    move-result v2

    #@f
    const/16 v3, 0x12c

    #@11
    if-lt v2, v3, :cond_0

    #@13
    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 639
    .local v0, "branch":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 626
    :goto_1
    return-void

    #@1f
    .line 632
    .end local v0    # "branch":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 634
    .end local v0    # "branch":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "CANCEL"

    #@2b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 635
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 636
    .end local v0    # "branch":Ljava/lang/String;
    :cond_2
    return-void

    #@3b
    .line 640
    .restart local v0    # "branch":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3c
    .line 641
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    #@3f
    goto :goto_1
.end method


# virtual methods
.method public checkHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 408
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 409
    new-instance v0, Ljava/text/ParseException;

    #@9
    const-string/jumbo v1, "CSeq Is missing "

    #@c
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 411
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 412
    new-instance v0, Ljava/text/ParseException;

    #@18
    const-string/jumbo v1, "To Is missing "

    #@1b
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1e
    throw v0

    #@1f
    .line 414
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@22
    move-result-object v0

    #@23
    if-nez v0, :cond_2

    #@25
    .line 415
    new-instance v0, Ljava/text/ParseException;

    #@27
    const-string/jumbo v1, "From Is missing "

    #@2a
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2d
    throw v0

    #@2e
    .line 417
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@31
    move-result-object v0

    #@32
    if-nez v0, :cond_3

    #@34
    .line 418
    new-instance v0, Ljava/text/ParseException;

    #@36
    const-string/jumbo v1, "Via Is missing "

    #@39
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@3c
    throw v0

    #@3d
    .line 420
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@40
    move-result-object v0

    #@41
    if-nez v0, :cond_4

    #@43
    .line 421
    new-instance v0, Ljava/text/ParseException;

    #@45
    const-string/jumbo v1, "Call-ID Is missing "

    #@48
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4b
    throw v0

    #@4c
    .line 425
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@4f
    move-result v0

    #@50
    const/16 v1, 0x2bb

    #@52
    if-le v0, v1, :cond_5

    #@54
    .line 426
    new-instance v0, Ljava/text/ParseException;

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "Unknown error code!"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@65
    move-result v2

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@71
    throw v0

    #@72
    .line 407
    :cond_5
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@6
    .line 482
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 483
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/StatusLine;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@14
    .line 484
    :cond_0
    return-object v0
.end method

.method public createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 8
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/SipUri;
    .param p2, "via"    # Lgov/nist/javax/sip/header/Via;
    .param p3, "cseq"    # Lgov/nist/javax/sip/header/CSeq;
    .param p4, "from"    # Lgov/nist/javax/sip/header/From;
    .param p5, "to"    # Lgov/nist/javax/sip/header/To;

    #@0
    .prologue
    .line 683
    new-instance v4, Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    invoke-direct {v4}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@5
    .line 684
    .local v4, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p3}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 686
    .local v3, "method":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@c
    .line 687
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@f
    .line 688
    invoke-direct {p0, p2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V

    #@12
    .line 689
    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@15
    .line 690
    invoke-virtual {v4, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@18
    .line 691
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getHeaders()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .line 692
    .local v2, "headerIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_3

    #@22
    .line 693
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    #@28
    .line 695
    .local v5, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-static {v5}, Lgov/nist/javax/sip/message/SIPMessage;->isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@2b
    move-result v6

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 696
    instance-of v6, v5, Lgov/nist/javax/sip/header/ViaList;

    #@30
    .line 695
    if-nez v6, :cond_0

    #@32
    .line 697
    instance-of v6, v5, Lgov/nist/javax/sip/header/CSeq;

    #@34
    .line 695
    if-nez v6, :cond_0

    #@36
    .line 698
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentType;

    #@38
    .line 695
    if-nez v6, :cond_0

    #@3a
    .line 699
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentLength;

    #@3c
    .line 695
    if-nez v6, :cond_0

    #@3e
    .line 700
    instance-of v6, v5, Lgov/nist/javax/sip/header/RecordRouteList;

    #@40
    .line 695
    if-nez v6, :cond_0

    #@42
    .line 701
    instance-of v6, v5, Lgov/nist/javax/sip/header/RequireList;

    #@44
    .line 695
    if-nez v6, :cond_0

    #@46
    .line 702
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContactList;

    #@48
    .line 695
    if-nez v6, :cond_0

    #@4a
    .line 703
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentLength;

    #@4c
    .line 695
    if-nez v6, :cond_0

    #@4e
    .line 704
    instance-of v6, v5, Ljavax/sip/header/ServerHeader;

    #@50
    .line 695
    if-nez v6, :cond_0

    #@52
    .line 705
    instance-of v6, v5, Ljavax/sip/header/ReasonHeader;

    #@54
    .line 695
    if-nez v6, :cond_0

    #@56
    .line 706
    instance-of v6, v5, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    #@58
    .line 695
    if-nez v6, :cond_0

    #@5a
    .line 707
    instance-of v6, v5, Lgov/nist/javax/sip/header/ReasonList;

    #@5c
    .line 695
    if-nez v6, :cond_0

    #@5e
    .line 710
    instance-of v6, v5, Lgov/nist/javax/sip/header/To;

    #@60
    if-eqz v6, :cond_2

    #@62
    .line 711
    move-object v5, p5

    #@63
    .line 715
    :cond_1
    :goto_1
    const/4 v6, 0x0

    #@64
    :try_start_0
    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    goto :goto_0

    #@68
    .line 716
    :catch_0
    move-exception v1

    #@69
    .line 718
    .local v1, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    #@6c
    goto :goto_0

    #@6d
    .line 712
    .end local v1    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_2
    instance-of v6, v5, Lgov/nist/javax/sip/header/From;

    #@6f
    if-eqz v6, :cond_1

    #@71
    .line 713
    move-object v5, p4

    #@72
    goto :goto_1

    #@73
    .line 724
    .end local v5    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_3
    :try_start_1
    new-instance v6, Lgov/nist/javax/sip/header/MaxForwards;

    #@75
    const/16 v7, 0x46

    #@77
    invoke-direct {v6, v7}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    #@7a
    const/4 v7, 0x0

    #@7b
    invoke-virtual {v4, v6, v7}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@7e
    .line 729
    :goto_2
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@81
    move-result-object v6

    #@82
    if-eqz v6, :cond_4

    #@84
    .line 730
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@8b
    .line 732
    :cond_4
    return-object v4

    #@8c
    .line 725
    :catch_1
    move-exception v0

    #@8d
    .local v0, "d":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 391
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 392
    .local v0, "superstring":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@7
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 393
    const-class v1, Lgov/nist/javax/sip/message/SIPResponse;

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    #@12
    .line 394
    const-string/jumbo v1, "{"

    #@15
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    #@18
    .line 395
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 396
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->debugDump()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    #@25
    .line 398
    :cond_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    #@28
    .line 399
    const-string/jumbo v1, "}"

    #@2b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    #@2e
    .line 400
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->stringRepresentation:Ljava/lang/String;

    #@30
    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 438
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@b
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 442
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    #@20
    .line 441
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 534
    const/4 v2, 0x0

    #@2
    .line 535
    .local v2, "slbytes":[B
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 537
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@8
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    const-string/jumbo v5, "UTF-8"

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    .line 542
    .end local v2    # "slbytes":[B
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@16
    move-result-object v3

    #@17
    .line 543
    .local v3, "superbytes":[B
    array-length v4, v2

    #@18
    array-length v5, v3

    #@19
    add-int/2addr v4, v5

    #@1a
    new-array v1, v4, [B

    #@1c
    .line 544
    .local v1, "retval":[B
    array-length v4, v2

    #@1d
    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 545
    array-length v4, v2

    #@21
    .line 546
    array-length v5, v3

    #@22
    .line 545
    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@25
    .line 547
    return-object v1

    #@26
    .line 538
    .end local v1    # "retval":[B
    .end local v3    # "superbytes":[B
    .restart local v2    # "slbytes":[B
    :catch_0
    move-exception v0

    #@27
    .line 539
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@2a
    goto :goto_0
.end method

.method public encodeMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 452
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@b
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 456
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    #@20
    .line 455
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 493
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 494
    return v1

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 495
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@13
    .line 496
    .local v0, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@15
    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@17
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/StatusLine;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    :cond_1
    return v1
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isServer"    # Z

    #@0
    .prologue
    .line 559
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    #@6
    .line 560
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@c
    .line 561
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lgov/nist/javax/sip/header/To;

    #@12
    .line 562
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    new-instance v2, Ljava/lang/StringBuffer;

    #@14
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@1b
    .line 563
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    #@1d
    .line 565
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 566
    const-string/jumbo v4, ":"

    #@26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 567
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 570
    :cond_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 571
    const-string/jumbo v4, ":"

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 572
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 586
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    return-object v4

    #@4c
    .line 576
    :cond_2
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 577
    const-string/jumbo v4, ":"

    #@55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 578
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 581
    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    if-eqz v4, :cond_1

    #@65
    .line 582
    const-string/jumbo v4, ":"

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 583
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@72
    goto :goto_0
.end method

.method public getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "isServer"    # Z
    .param p2, "toTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 590
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    #@6
    .line 591
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@c
    .line 592
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    new-instance v2, Ljava/lang/StringBuffer;

    #@e
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@15
    .line 593
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    #@17
    .line 595
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 596
    const-string/jumbo v3, ":"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 597
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 600
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    .line 601
    const-string/jumbo v3, ":"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 602
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    .line 616
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 606
    :cond_2
    if-eqz p2, :cond_3

    #@40
    .line 607
    const-string/jumbo v3, ":"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 608
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 611
    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    if-eqz v3, :cond_1

    #@4f
    .line 612
    const-string/jumbo v3, ":"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    .line 613
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    goto :goto_0
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 653
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 654
    return-object v1

    #@6
    .line 656
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 2

    #@0
    .prologue
    .line 467
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    #@3
    move-result-object v0

    #@4
    .line 469
    .local v0, "retval":Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 470
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@11
    .line 471
    :cond_0
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@6
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 349
    :cond_0
    const-string/jumbo v0, ""

    #@f
    return-object v0

    #@10
    .line 351
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@12
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public getSIPVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getSipVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusLine()Lgov/nist/javax/sip/header/StatusLine;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    return-object v0
.end method

.method public isFinalResponse()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "matchObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 505
    if-nez p1, :cond_0

    #@4
    .line 506
    return v5

    #@5
    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_1

    #@13
    .line 508
    return v2

    #@14
    .line 509
    :cond_1
    if-ne p1, p0, :cond_2

    #@16
    .line 510
    return v5

    #@17
    :cond_2
    move-object v1, p1

    #@18
    .line 511
    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    #@1a
    .line 513
    .local v1, "that":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v0, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1c
    .line 514
    .local v0, "rline":Lgov/nist/javax/sip/header/StatusLine;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1e
    if-nez v3, :cond_3

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 515
    return v2

    #@23
    .line 516
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@25
    if-ne v3, v0, :cond_4

    #@27
    .line 517
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    return v2

    #@2c
    .line 520
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2e
    iget-object v4, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@30
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/StatusLine;->match(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_5

    #@36
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    :cond_5
    return v2
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 337
    if-nez p1, :cond_0

    #@2
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Bad reason phrase"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 339
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 340
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@16
    .line 341
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@18
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@1b
    .line 336
    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "sipVersion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    #@5
    .line 659
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    const/16 v0, 0x64

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x2bb

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 311
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    #@a
    const-string/jumbo v1, "bad status code"

    #@d
    const/4 v2, 0x0

    #@e
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v0

    #@12
    .line 312
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@14
    if-nez v0, :cond_2

    #@16
    .line 313
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@1b
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1d
    .line 314
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@1f
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@22
    .line 305
    return-void
.end method

.method public setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    .locals 0
    .param p1, "sl"    # Lgov/nist/javax/sip/header/StatusLine;

    #@0
    .prologue
    .line 374
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    #@f
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
