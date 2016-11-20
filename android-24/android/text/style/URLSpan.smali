.class public Landroid/text/style/URLSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    #@3
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    #@9
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    #@5
    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/16 v0, 0xb

    #@2
    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "widget"    # Landroid/view/View;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v3

    #@8
    .line 71
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 72
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    #@e
    const-string/jumbo v4, "android.intent.action.VIEW"

    #@11
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@14
    .line 73
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.browser.application_id"

    #@17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1e
    .line 75
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 69
    :goto_0
    return-void

    #@22
    .line 76
    :catch_0
    move-exception v1

    #@23
    .line 77
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "URLSpan"

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "Actvity was not found for intent, "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 55
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 60
    return-void
.end method
