.class public final Landroid/system/virtualmachine/VirtualMachineDescriptor;
.super Ljava/lang/Object;
.source "VirtualMachineDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualmachine/VirtualMachineDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist mClosed:Z

.field private final blacklist mConfigFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInstanceIdFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInstanceImgFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;-><init>()V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    .line 126
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    .line 127
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceIdFd:Landroid/os/ParcelFileDescriptor;

    .line 128
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    .line 129
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    .line 130
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualmachine/VirtualMachineDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "configFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "instanceIdFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "instanceImgFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "encryptedStoreFd"    # Landroid/os/ParcelFileDescriptor;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    .line 120
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceIdFd:Landroid/os/ParcelFileDescriptor;

    .line 121
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    .line 122
    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    .line 123
    return-void
.end method

.method private blacklist checkNotClosed()V
    .registers 3

    .line 156
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    if-nez v0, :cond_5

    .line 159
    return-void

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Descriptor has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist readParcelFileDescriptor(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mClosed:Z

    .line 145
    :try_start_3
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_44

    :try_start_5
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceIdFd:Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_38

    :try_start_7
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2c

    :try_start_9
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    .line 149
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_20

    :cond_10
    if-eqz v2, :cond_15

    :try_start_12
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2c

    :cond_15
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_38

    :cond_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_44

    .line 152
    :cond_1f
    goto :goto_45

    .line 145
    :catchall_20
    move-exception v3

    if-eqz v2, :cond_2b

    :try_start_23
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :cond_2b
    :goto_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_37

    :try_start_2f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :cond_37
    :goto_37
    throw v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :catchall_38
    move-exception v1

    if-eqz v0, :cond_43

    :try_start_3b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :cond_43
    :goto_43
    throw v1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 149
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :catch_44
    move-exception v0

    .line 153
    :goto_45
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getConfigFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    .line 83
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    .line 111
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getInstanceIdFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    .line 92
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceIdFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getInstanceImgFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    .line 101
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->checkNotClosed()V

    .line 59
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mConfigFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceIdFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mInstanceImgFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineDescriptor;->mEncryptedStoreFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
