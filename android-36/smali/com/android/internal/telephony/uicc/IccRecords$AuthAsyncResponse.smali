.class Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthAsyncResponse"
.end annotation


# instance fields
.field public blacklist authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

.field public blacklist exception:Ljava/lang/Throwable;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IccRecords-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;-><init>()V

    return-void
.end method
