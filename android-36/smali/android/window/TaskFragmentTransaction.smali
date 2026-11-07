.class public final Landroid/window/TaskFragmentTransaction;
.super Ljava/lang/Object;
.source "TaskFragmentTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentTransaction$Change;,
        Landroid/window/TaskFragmentTransaction$ChangeType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_REPARENTED_TO_TASK:I = 0x6

.field public static final blacklist TYPE_TASK_FRAGMENT_APPEARED:I = 0x1

.field public static final blacklist TYPE_TASK_FRAGMENT_ERROR:I = 0x5

.field public static final blacklist TYPE_TASK_FRAGMENT_INFO_CHANGED:I = 0x2

.field public static final blacklist TYPE_TASK_FRAGMENT_PARENT_INFO_CHANGED:I = 0x4

.field public static final blacklist TYPE_TASK_FRAGMENT_VANISHED:I = 0x3


# instance fields
.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransactionToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/window/TaskFragmentTransaction$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentTransaction$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    .line 60
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TaskFragmentTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TaskFragmentTransaction$Change;)V
    .registers 3
    .param p1, "change"    # Landroid/window/TaskFragmentTransaction$Change;

    .line 76
    if-eqz p1, :cond_7

    .line 77
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_7
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTransactionToken()Landroid/os/IBinder;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskFragmentTransaction{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " changes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 98
    if-lez v1, :cond_24

    .line 99
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_24
    iget-object v2, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 103
    .end local v1    # "i":I
    :cond_30
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mTransactionToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    return-void
.end method
