.class public final enum Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
.super Ljava/lang/Enum;
.source "RequestDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;


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
    .line 17
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@7
    const-string/jumbo v1, "SPPVersion"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@f
    .line 18
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@11
    const-string/jumbo v1, "RedirectURI"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@19
    .line 19
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@1b
    const-string/jumbo v1, "RequestReason"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@23
    .line 20
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@25
    const-string/jumbo v1, "SessionID"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2d
    .line 21
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2f
    const-string/jumbo v1, "SupportedVersions"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@37
    .line 22
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@39
    const-string/jumbo v1, "SupportedMOs"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@42
    .line 16
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@45
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->$VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@60
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    const-class v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .locals 1

    #@0
    .prologue
    .line 16
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->$VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2
    return-object v0
.end method
