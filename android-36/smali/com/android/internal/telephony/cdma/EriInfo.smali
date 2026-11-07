.class public final Lcom/android/internal/telephony/cdma/EriInfo;
.super Ljava/lang/Object;
.source "EriInfo.java"


# static fields
.field public static final blacklist ROAMING_ICON_MODE_FLASH:I = 0x1

.field public static final blacklist ROAMING_ICON_MODE_NORMAL:I = 0x0

.field public static final blacklist ROAMING_INDICATOR_FLASH:I = 0x2

.field public static final blacklist ROAMING_INDICATOR_OFF:I = 0x1

.field public static final blacklist ROAMING_INDICATOR_ON:I


# instance fields
.field public blacklist alertId:I

.field public blacklist callPromptId:I

.field public blacklist eriText:Ljava/lang/String;

.field public blacklist iconIndex:I

.field public blacklist iconMode:I

.field public blacklist roamingIndicator:I


# direct methods
.method public constructor blacklist <init>(IIILjava/lang/String;II)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/internal/telephony/cdma/EriInfo;->roamingIndicator:I

    .line 41
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    .line 43
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    .line 44
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriInfo;->callPromptId:I

    .line 45
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriInfo;->alertId:I

    return-void
.end method
