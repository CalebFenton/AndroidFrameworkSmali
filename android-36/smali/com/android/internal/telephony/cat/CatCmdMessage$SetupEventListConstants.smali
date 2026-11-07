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
.field public static final blacklist BROWSER_TERMINATION_EVENT:I = 0x8

.field public static final blacklist BROWSING_STATUS_EVENT:I = 0xf

.field public static final blacklist IDLE_SCREEN_AVAILABLE_EVENT:I = 0x5

.field public static final blacklist LANGUAGE_SELECTION_EVENT:I = 0x7

.field public static final blacklist USER_ACTIVITY_EVENT:I = 0x4


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
