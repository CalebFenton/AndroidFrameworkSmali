.class public Lcom/android/internal/telephony/Phone$SilentRedialParam;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SilentRedialParam"
.end annotation


# instance fields
.field public blacklist causeCode:I

.field public blacklist dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

.field public blacklist dialString:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 4

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialString:Ljava/lang/String;

    .line 328
    iput p2, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->causeCode:I

    .line 329
    iput-object p3, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    return-void
.end method
