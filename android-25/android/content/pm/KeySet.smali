.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/KeySet$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private token:Landroid/os/IBinder;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/content/pm/KeySet$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    #@5
    .line 66
    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    if-nez p1, :cond_0

    #@5
    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "null value for KeySet IBinder token"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 38
    :cond_0
    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@10
    .line 34
    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 91
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/content/pm/KeySet;

    #@6
    invoke-direct {v1, v0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    #@9
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 107
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
    instance-of v2, p1, Landroid/content/pm/KeySet;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 50
    check-cast v0, Landroid/content/pm/KeySet;

    #@8
    .line 51
    .local v0, "ks":Landroid/content/pm/KeySet;
    iget-object v2, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@a
    iget-object v3, v0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@c
    if-ne v2, v3, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    return v1

    #@10
    .line 53
    .end local v0    # "ks":Landroid/content/pm/KeySet;
    :cond_1
    return v1
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5
    .line 98
    return-void
.end method
