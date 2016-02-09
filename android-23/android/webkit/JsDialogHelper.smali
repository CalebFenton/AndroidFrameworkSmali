.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$CancelListener;,
        Landroid/webkit/JsDialogHelper$PositiveListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@5
    .line 60
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    #@7
    .line 61
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@9
    .line 62
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@b
    .line 63
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@d
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@5
    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "default"

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    #@12
    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "message"

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@1f
    .line 70
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "type"

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@2c
    .line 71
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, "url"

    #@33
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@39
    .line 66
    return-void
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 185
    instance-of v0, p0, Landroid/app/Activity;

    #@2
    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@2
    .line 162
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@4
    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 164
    const v3, 0x10402bf

    #@d
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 175
    :goto_0
    return-object v2

    #@12
    .line 167
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    #@14
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@16
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@19
    .line 169
    .local v0, "alertUrl":Ljava/net/URL;
    const/4 v3, 0x1

    #@1a
    new-array v3, v3, [Ljava/lang/Object;

    #@1c
    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v5, "://"

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    const/4 v5, 0x0

    #@3d
    aput-object v4, v3, v5

    #@3f
    .line 169
    const v4, 0x10402be

    #@42
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v2

    #@46
    goto :goto_0

    #@47
    .line 171
    .end local v0    # "alertUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    #@48
    .local v1, "ex":Ljava/net/MalformedURLException;
    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 6
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unexpected type: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 77
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@23
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@25
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@27
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 79
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@2e
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@30
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@32
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    #@35
    move-result v0

    #@36
    return v0

    #@37
    .line 81
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@39
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@3b
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@3d
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    #@40
    move-result v0

    #@41
    return v0

    #@42
    .line 83
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    #@44
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@46
    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    #@48
    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@4a
    move-object v0, p1

    #@4b
    move-object v1, p2

    #@4c
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    #@4f
    move-result v0

    #@50
    return v0

    #@51
    .line 75
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 90
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_0

    #@8
    .line 91
    const-string/jumbo v7, "JsDialogHelper"

    #@b
    const-string/jumbo v8, "Cannot create a dialog, the WebView context is not an Activity"

    #@e
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 92
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    #@13
    invoke-virtual {v7}, Landroid/webkit/JsPromptResult;->cancel()V

    #@16
    .line 93
    return-void

    #@17
    .line 98
    :cond_0
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@19
    const/4 v8, 0x4

    #@1a
    if-ne v7, v8, :cond_2

    #@1c
    .line 99
    const v7, 0x10402c0

    #@1f
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    .line 100
    .local v5, "title":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    #@25
    .line 101
    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@27
    const/4 v9, 0x0

    #@28
    aput-object v8, v7, v9

    #@2a
    const v8, 0x10402c3

    #@2d
    .line 100
    invoke-virtual {p1, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 102
    .local v1, "displayMessage":Ljava/lang/String;
    const v4, 0x10402c1

    #@34
    .line 103
    .local v4, "positiveTextId":I
    const v3, 0x10402c2

    #@37
    .line 110
    .local v3, "negativeTextId":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@39
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@3c
    .line 111
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@3f
    .line 112
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    #@41
    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V

    #@44
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@47
    .line 113
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@49
    const/4 v8, 0x3

    #@4a
    if-eq v7, v8, :cond_3

    #@4c
    .line 114
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@4f
    .line 115
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    #@51
    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    #@54
    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@57
    .line 125
    :goto_1
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    #@59
    if-eq v7, v11, :cond_1

    #@5b
    .line 126
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    #@5d
    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V

    #@60
    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@63
    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@66
    .line 89
    return-void

    #@67
    .line 105
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v3    # "negativeTextId":I
    .end local v4    # "positiveTextId":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 106
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@6d
    .line 107
    .restart local v1    # "displayMessage":Ljava/lang/String;
    const v4, 0x104000a

    #@70
    .line 108
    .restart local v4    # "positiveTextId":I
    const/high16 v3, 0x1040000

    #@72
    .restart local v3    # "negativeTextId":I
    goto :goto_0

    #@73
    .line 117
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@76
    move-result-object v7

    #@77
    .line 118
    const v8, 0x109006d

    #@7a
    .line 117
    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@7d
    move-result-object v6

    #@7e
    .line 119
    .local v6, "view":Landroid/view/View;
    const v7, 0x102034e

    #@81
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@84
    move-result-object v2

    #@85
    check-cast v2, Landroid/widget/EditText;

    #@87
    .line 120
    .local v2, "edit":Landroid/widget/EditText;
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    #@89
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@8c
    .line 121
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    #@8e
    invoke-direct {v7, p0, v2}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    #@91
    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@94
    .line 122
    const v7, 0x102000b

    #@97
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9a
    move-result-object v7

    #@9b
    check-cast v7, Landroid/widget/TextView;

    #@9d
    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    #@9f
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a2
    .line 123
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@a5
    goto :goto_1
.end method
