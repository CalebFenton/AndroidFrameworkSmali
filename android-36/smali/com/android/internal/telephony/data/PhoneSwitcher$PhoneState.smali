.class public Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhoneState"
.end annotation


# instance fields
.field public volatile blacklist active:Z

.field public blacklist lastRequested:J


# direct methods
.method protected constructor blacklist <init>()V
    .registers 3

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1261
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    const-wide/16 v0, 0x0

    .line 1262
    iput-wide v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->lastRequested:J

    return-void
.end method
