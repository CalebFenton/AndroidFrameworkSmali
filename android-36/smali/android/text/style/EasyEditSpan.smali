.class public Landroid/text/style/EasyEditSpan;
.super Ljava/lang/Object;
.source "EasyEditSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist EXTRA_TEXT_CHANGED_TYPE:Ljava/lang/String; = "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

.field public static final whitelist TEXT_DELETED:I = 0x1

.field public static final whitelist TEXT_MODIFIED:I = 0x2


# instance fields
.field private greylist-max-o mDeleteEnabled:Z

.field private final greylist-max-o mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 107
    invoke-virtual {p0}, Landroid/text/style/EasyEditSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 112
    const/16 v0, 0x16

    return v0
.end method

.method public greylist-max-r isDeleteEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return v0
.end method

.method public greylist-max-r setDeleteEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 132
    iput-boolean p1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 133
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/text/style/EasyEditSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 97
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    return-void
.end method
