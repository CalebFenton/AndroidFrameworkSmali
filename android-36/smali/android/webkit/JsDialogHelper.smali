.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$CancelListener;,
        Landroid/webkit/JsDialogHelper$PositiveListener;
    }
.end annotation


# static fields
.field public static final whitelist ALERT:I = 0x1

.field public static final whitelist CONFIRM:I = 0x2

.field public static final whitelist PROMPT:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final whitelist UNLOAD:I = 0x4


# instance fields
.field private final greylist-max-o mDefaultValue:Ljava/lang/String;

.field private final greylist-max-o mMessage:Ljava/lang/String;

.field private final greylist-max-o mResult:Landroid/webkit/JsPromptResult;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .registers 1

    iget-object p0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 60
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 62
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 63
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 70
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 71
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private static greylist-max-o canShowAlertDialog(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private greylist-max-o getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 162
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 164
    const v1, 0x104052e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 167
    :cond_12
    :try_start_12
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "alertUrl":Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    const v3, 0x104052d

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_43
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_43} :catch_45

    move-object v0, v2

    .line 173
    .end local v1    # "alertUrl":Ljava/net/URL;
    goto :goto_46

    .line 171
    :catch_45
    move-exception v1

    .line 175
    :goto_46
    return-object v0
.end method


# virtual methods
.method public whitelist invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .registers 10
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .line 75
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_56

    .line 85
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "client":Landroid/webkit/WebChromeClient;
    .end local p2    # "webView":Landroid/webkit/WebView;
    .local v1, "client":Landroid/webkit/WebChromeClient;
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    .end local v1    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "webView":Landroid/webkit/WebView;
    .restart local p1    # "client":Landroid/webkit/WebChromeClient;
    .restart local p2    # "webView":Landroid/webkit/WebView;
    :pswitch_22
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_2d
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "client":Landroid/webkit/WebChromeClient;
    .end local p2    # "webView":Landroid/webkit/WebView;
    .restart local v1    # "client":Landroid/webkit/WebChromeClient;
    .restart local v2    # "webView":Landroid/webkit/WebView;
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 79
    .end local v1    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "webView":Landroid/webkit/WebView;
    .restart local p1    # "client":Landroid/webkit/WebChromeClient;
    .restart local p2    # "webView":Landroid/webkit/WebView;
    :pswitch_3c
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "client":Landroid/webkit/WebChromeClient;
    .end local p2    # "webView":Landroid/webkit/WebView;
    .restart local v1    # "client":Landroid/webkit/WebChromeClient;
    .restart local v2    # "webView":Landroid/webkit/WebView;
    iget-object p1, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object p2, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 77
    .end local v1    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "webView":Landroid/webkit/WebView;
    .restart local p1    # "client":Landroid/webkit/WebChromeClient;
    .restart local p2    # "webView":Landroid/webkit/WebView;
    :pswitch_49
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "client":Landroid/webkit/WebChromeClient;
    .end local p2    # "webView":Landroid/webkit/WebView;
    .restart local v1    # "client":Landroid/webkit/WebChromeClient;
    .restart local v2    # "webView":Landroid/webkit/WebView;
    iget-object p1, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object p2, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3c
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist showDialog(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 91
    const-string v0, "JsDialogHelper"

    const-string v1, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 93
    return-void

    .line 98
    :cond_13
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 99
    const v0, 0x104052c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040529

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "displayMessage":Ljava/lang/String;
    const v2, 0x104052b

    .line 103
    .local v2, "positiveTextId":I
    const v3, 0x104052a

    .local v3, "negativeTextId":I
    goto :goto_3e

    .line 105
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v2    # "positiveTextId":I
    .end local v3    # "negativeTextId":I
    :cond_33
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 107
    .restart local v1    # "displayMessage":Ljava/lang/String;
    const v2, 0x104000a

    .line 108
    .restart local v2    # "positiveTextId":I
    const/high16 v3, 0x1040000

    .line 110
    .restart local v3    # "negativeTextId":I
    :goto_3e
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v5, Landroid/webkit/JsDialogHelper$CancelListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper-IA;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    iget v5, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_60

    .line 114
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v5, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v5, p0, v6}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 117
    :cond_60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x109009e

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 119
    .local v5, "view":Landroid/view/View;
    const v7, 0x10205e5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 120
    .local v7, "edit":Landroid/widget/EditText;
    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v8, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v8, p0, v7}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v8, 0x102000b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    .end local v5    # "view":Landroid/view/View;
    .end local v7    # "edit":Landroid/widget/EditText;
    :goto_92
    iget v5, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_9f

    .line 126
    new-instance v5, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v5, p0, v6}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper-IA;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    :cond_9f
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method
