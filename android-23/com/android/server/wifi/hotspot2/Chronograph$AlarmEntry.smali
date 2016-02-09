.class Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
.super Ljava/lang/Object;
.source "Chronograph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/Chronograph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmEntry"
.end annotation


# instance fields
.field private final mAlarmHandler:Lcom/android/server/wifi/hotspot2/AlarmHandler;

.field private final mAt:J

.field private final mToken:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mAt:J

    #@2
    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->callout()V

    #@3
    return-void
.end method

.method private constructor <init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "at"    # J
    .param p3, "alarmHandler"    # Lcom/android/server/wifi/hotspot2/AlarmHandler;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mAt:J

    #@5
    .line 22
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mAlarmHandler:Lcom/android/server/wifi/hotspot2/AlarmHandler;

    #@7
    .line 23
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mToken:Ljava/lang/Object;

    #@9
    .line 20
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V
    .locals 1
    .param p1, "at"    # J
    .param p3, "alarmHandler"    # Lcom/android/server/wifi/hotspot2/AlarmHandler;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;-><init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private callout()V
    .locals 2

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mAlarmHandler:Lcom/android/server/wifi/hotspot2/AlarmHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mToken:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1}, Lcom/android/server/wifi/hotspot2/AlarmHandler;->wake(Ljava/lang/Object;)V

    #@7
    .line 26
    return-void
.end method
