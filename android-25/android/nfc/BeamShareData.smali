.class public final Landroid/nfc/BeamShareData;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/BeamShareData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/BeamShareData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final flags:I

.field public final ndefMessage:Landroid/nfc/NdefMessage;

.field public final uris:[Landroid/net/Uri;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Landroid/nfc/BeamShareData$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/BeamShareData$1;-><init>()V

    #@5
    .line 45
    sput-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V
    .locals 0
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    iput-object p1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    #@5
    .line 23
    iput-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    #@7
    .line 24
    iput-object p3, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    #@9
    .line 25
    iput p4, p0, Landroid/nfc/BeamShareData;->flags:I

    #@b
    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 35
    iget-object v1, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    #@7
    array-length v0, v1

    #@8
    .line 36
    .local v0, "urisLength":I
    :goto_0
    iget-object v1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    #@a
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@d
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 38
    if-lez v0, :cond_0

    #@12
    .line 39
    iget-object v1, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    #@14
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@17
    .line 41
    :cond_0
    iget-object v1, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    #@19
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1c
    .line 42
    iget v1, p0, Landroid/nfc/BeamShareData;->flags:I

    #@1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 34
    return-void

    #@22
    .line 35
    .end local v0    # "urisLength":I
    :cond_1
    const/4 v0, 0x0

    #@23
    .restart local v0    # "urisLength":I
    goto :goto_0
.end method
