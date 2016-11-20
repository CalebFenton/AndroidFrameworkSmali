.class public Landroid/accounts/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/Account$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sAccessedAccounts:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sAccessedAccounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Landroid/accounts/Account;->sAccessedAccounts:Ljava/util/Set;

    #@7
    .line 122
    new-instance v0, Landroid/accounts/Account$1;

    #@9
    invoke-direct {v0}, Landroid/accounts/Account$1;-><init>()V

    #@c
    sput-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "other"    # Landroid/accounts/Account;
    .param p2, "accessId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4
    invoke-direct {p0, v0, v1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@9
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@f
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@15
    .line 92
    iget-object v2, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 93
    sget-object v3, Landroid/accounts/Account;->sAccessedAccounts:Ljava/util/Set;

    #@1b
    monitor-enter v3

    #@1c
    .line 94
    :try_start_0
    sget-object v2, Landroid/accounts/Account;->sAccessedAccounts:Ljava/util/Set;

    #@1e
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 97
    :try_start_1
    const-string/jumbo v2, "account"

    #@27
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2a
    move-result-object v2

    #@2b
    .line 96
    invoke-static {v2}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    #@2e
    move-result-object v0

    #@2f
    .line 98
    .local v0, "accountManager":Landroid/accounts/IAccountManager;
    iget-object v2, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@31
    invoke-interface {v0, v2}, Landroid/accounts/IAccountManager;->onAccountAccessed(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .end local v0    # "accountManager":Landroid/accounts/IAccountManager;
    :cond_0
    :goto_0
    monitor-exit v3

    #@35
    .line 88
    :cond_1
    return-void

    #@36
    .line 99
    :catch_0
    move-exception v1

    #@37
    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "Account"

    #@3a
    const-string/jumbo v4, "Error noting account access"

    #@3d
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 93
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@42
    monitor-exit v3

    #@43
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "accessId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "the name must not be empty: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 80
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "the type must not be empty: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 83
    :cond_1
    iput-object p1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@45
    .line 84
    iput-object p2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@47
    .line 85
    iput-object p3, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@49
    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 49
    if-ne p1, p0, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 50
    :cond_0
    instance-of v2, p1, Landroid/accounts/Account;

    #@7
    if-nez v2, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 51
    check-cast v0, Landroid/accounts/Account;

    #@d
    .line 52
    .local v0, "other":Landroid/accounts/Account;
    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public getAccessId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 57
    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 58
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 59
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Account {name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", type="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 118
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 119
    iget-object v0, p0, Landroid/accounts/Account;->accessId:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 116
    return-void
.end method
