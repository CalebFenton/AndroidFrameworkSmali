.class Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneState"
.end annotation


# instance fields
.field public volatile active:Z

.field public lastRequested:J


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 332
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@6
    .line 333
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    #@a
    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>()V

    #@3
    return-void
.end method
