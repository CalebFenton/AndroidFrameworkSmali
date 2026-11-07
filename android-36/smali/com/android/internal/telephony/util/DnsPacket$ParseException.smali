.class public Lcom/android/internal/telephony/util/DnsPacket$ParseException;
.super Ljava/lang/RuntimeException;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# instance fields
.field public blacklist reason:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;->reason:Ljava/lang/String;

    return-void
.end method
