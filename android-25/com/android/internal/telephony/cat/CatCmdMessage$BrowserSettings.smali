.class public Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSettings"
.end annotation


# instance fields
.field public mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
