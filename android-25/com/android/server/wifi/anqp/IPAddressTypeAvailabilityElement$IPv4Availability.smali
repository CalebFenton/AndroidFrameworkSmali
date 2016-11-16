.class public final enum Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
.super Ljava/lang/Enum;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPv4Availability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 11
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@7
    const-string/jumbo v1, "NotAvailable"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@f
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@11
    const-string/jumbo v1, "Public"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@19
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@1b
    const-string/jumbo v1, "PortRestricted"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@23
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@25
    const-string/jumbo v1, "SingleNAT"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@2d
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@2f
    const-string/jumbo v1, "DoubleNAT"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@37
    .line 12
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@39
    const-string/jumbo v1, "PortRestrictedAndSingleNAT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@42
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@44
    const-string/jumbo v1, "PortRestrictedAndDoubleNAT"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@4d
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@4f
    const-string/jumbo v1, "Unknown"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@58
    .line 10
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@5c
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 10
    const-class v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1

    #@0
    .prologue
    .line 10
    sget-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@2
    return-object v0
.end method
