.class public final Landroid/view/inputmethod/ImeTracker$Token;
.super Ljava/lang/Object;
.source "ImeTracker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEmptyBinder:Landroid/os/IBinder;


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinder(Landroid/view/inputmethod/ImeTracker$Token;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 844
    new-instance v0, Landroid/view/inputmethod/ImeTracker$Token$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ImeTracker$Token$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p1, p0, Landroid/view/inputmethod/ImeTracker$Token;->mBinder:Landroid/os/IBinder;

    .line 773
    iput-object p2, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    .line 774
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mBinder:Landroid/os/IBinder;

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    .line 779
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist createTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "component"    # Ljava/lang/String;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist empty()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 807
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Token;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Token;->empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    return-object v1
.end method

.method static blacklist empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 814
    new-instance v0, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker$Token;->getEmptyBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getEmptyBinder()Landroid/os/IBinder;
    .registers 1

    .line 820
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->sEmptyBinder:Landroid/os/IBinder;

    if-nez v0, :cond_b

    .line 821
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Token;->sEmptyBinder:Landroid/os/IBinder;

    .line 823
    :cond_b
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->sEmptyBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 790
    iget-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 839
    iget-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 840
    iget-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 841
    return-void
.end method
