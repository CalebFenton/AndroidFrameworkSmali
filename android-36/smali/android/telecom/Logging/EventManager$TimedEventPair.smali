.class public Landroid/telecom/Logging/EventManager$TimedEventPair;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimedEventPair"
.end annotation


# static fields
.field private static final blacklist DEFAULT_TIMEOUT:J = 0xbb8L


# instance fields
.field blacklist mName:Ljava/lang/String;

.field blacklist mRequest:Ljava/lang/String;

.field blacklist mResponse:Ljava/lang/String;

.field blacklist mTimeoutMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    .line 106
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutMillis"    # J

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    .line 112
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    .line 115
    iput-wide p4, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    .line 116
    return-void
.end method
