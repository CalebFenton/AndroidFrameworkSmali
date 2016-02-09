.class public final enum Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
.super Ljava/lang/Enum;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 16
    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@5
    const-string/jumbo v1, "Closed"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@d
    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@f
    const-string/jumbo v1, "Open"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@17
    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@19
    const-string/jumbo v1, "Unknown"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@24
    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    const-class v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1

    #@0
    .prologue
    .line 16
    sget-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@2
    return-object v0
.end method
