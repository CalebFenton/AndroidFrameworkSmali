.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;
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
    name = "Credential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CheckAAAServerCertStatus:Z

.field public CreationDate:Ljava/lang/String;

.field public ExpirationDate:Ljava/lang/String;

.field public Realm:Ljava/lang/String;

.field public digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

.field public sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

.field public usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1236
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1192
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1195
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@a
    .line 1196
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@c
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@11
    .line 1199
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@18
    .line 1201
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1195
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@a
    .line 1196
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@c
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@11
    .line 1199
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@18
    .line 1205
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->readFromParcel(Landroid/os/Parcel;)V

    #@1b
    .line 1204
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1223
    if-nez p1, :cond_0

    #@3
    .line 1222
    :goto_0
    return-void

    #@4
    .line 1226
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    #@a
    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    #@10
    .line 1228
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@1c
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@1e
    .line 1229
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@20
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@2a
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@2c
    .line 1230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    #@32
    .line 1231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    if-ne v0, v1, :cond_1

    #@38
    move v0, v1

    #@39
    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    #@3b
    .line 1232
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@3d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@47
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@49
    goto :goto_0

    #@4a
    .line 1231
    :cond_1
    const/4 v0, 0x0

    #@4b
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1214
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 1215
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 1216
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 1217
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1218
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    #@1b
    if-eqz v0, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1219
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@26
    .line 1212
    return-void

    #@27
    .line 1218
    :cond_0
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method
