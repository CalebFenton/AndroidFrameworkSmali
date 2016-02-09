.class public final enum Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
.super Ljava/lang/Enum;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPv6Availability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 15
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@6
    const-string/jumbo v1, "NotAvailable"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@e
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@10
    const-string/jumbo v1, "Available"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@18
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@1a
    const-string/jumbo v1, "Unknown"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@22
    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@24
    const-string/jumbo v1, "Reserved"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2c
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2f
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 15
    const-class v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1

    #@0
    .prologue
    .line 15
    sget-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2
    return-object v0
.end method
