.class public final Landroid/service/carrier/MessagePdu;
.super Ljava/lang/Object;
.source "MessagePdu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/MessagePdu$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/carrier/MessagePdu;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_LENGTH:I = -0x1


# instance fields
.field private final mPduList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    new-instance v0, Landroid/service/carrier/MessagePdu$1;

    #@2
    invoke-direct {v0}, Landroid/service/carrier/MessagePdu$1;-><init>()V

    #@5
    .line 75
    sput-object v0, Landroid/service/carrier/MessagePdu;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "pduList must not be null or contain nulls"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 43
    :cond_1
    iput-object p1, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    #@17
    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPdus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 62
    iget-object v2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 63
    const/4 v2, -0x1

    #@5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 61
    :cond_0
    return-void

    #@9
    .line 65
    :cond_1
    iget-object v2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 66
    iget-object v2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "messagePdu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [B

    #@24
    .line 67
    .local v0, "messagePdu":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@27
    goto :goto_0
.end method
