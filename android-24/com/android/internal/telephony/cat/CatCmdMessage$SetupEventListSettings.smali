.class public Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupEventListSettings"
.end annotation


# instance fields
.field public eventList:[I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
