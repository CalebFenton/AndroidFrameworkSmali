.class public final Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetupEventListConstants"
.end annotation


# static fields
.field public static final BROWSER_TERMINATION_EVENT:I = 0x8

.field public static final BROWSING_STATUS_EVENT:I = 0xf

.field public static final IDLE_SCREEN_AVAILABLE_EVENT:I = 0x5

.field public static final LANGUAGE_SELECTION_EVENT:I = 0x7

.field public static final USER_ACTIVITY_EVENT:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
