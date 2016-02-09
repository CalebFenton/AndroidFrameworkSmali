.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Other:Ljava/lang/String;

.field public Restriction:Ljava/lang/String;

.field public URI:Ljava/lang/String;

.field public UpdateInterval:Ljava/lang/String;

.field public UpdateMethod:Ljava/lang/String;

.field public trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

.field public usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 474
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 429
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 434
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@a
    .line 436
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@c
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@11
    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 434
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@a
    .line 436
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@c
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@11
    .line 442
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->readFromParcel(Landroid/os/Parcel;)V

    #@14
    .line 441
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 461
    if-nez p1, :cond_0

    #@2
    .line 460
    :goto_0
    return-void

    #@3
    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    #@9
    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    #@f
    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    #@15
    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    #@1b
    .line 468
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@1d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@27
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@29
    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Other:Ljava/lang/String;

    #@2f
    .line 470
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@31
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@3b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@3d
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 451
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 452
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 453
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 454
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 455
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Other:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 456
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->trustRoot:Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;

    #@20
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@23
    .line 449
    return-void
.end method
