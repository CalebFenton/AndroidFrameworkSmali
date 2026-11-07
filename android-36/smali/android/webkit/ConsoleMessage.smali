.class public Landroid/webkit/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private greylist-max-p mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

.field private greylist-max-p mLineNumber:I

.field private greylist-max-p mMessage:Ljava/lang/String;

.field private greylist-max-p mSourceId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "msgLevel"    # Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    .line 52
    iput p3, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    .line 53
    iput-object p4, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist lineNumber()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    return v0
.end method

.method public whitelist message()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public whitelist sourceId()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method
