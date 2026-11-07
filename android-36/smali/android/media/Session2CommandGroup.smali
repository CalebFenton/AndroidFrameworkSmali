.class public final Landroid/media/Session2CommandGroup;
.super Ljava/lang/Object;
.source "Session2CommandGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Session2CommandGroup$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Session2CommandGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "Session2CommandGroup"


# instance fields
.field blacklist mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/Session2Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/media/Session2CommandGroup$1;

    invoke-direct {v0}, Landroid/media/Session2CommandGroup$1;-><init>()V

    sput-object v0, Landroid/media/Session2CommandGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    .line 73
    const-class v0, Landroid/media/Session2Command;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_26

    aget-object v2, p1, v1

    .line 76
    iget-object v3, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    check-cast v2, Landroid/media/Session2Command;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/Session2Command;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    if-eqz p1, :cond_f

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCommands()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/Session2Command;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist hasCommand(I)Z
    .registers 3

    if-eqz p1, :cond_1e

    .line 103
    iget-object p0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Session2Command;

    .line 104
    invoke-virtual {v0}, Landroid/media/Session2Command;->getCommandCode()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0

    .line 101
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use hasCommand(Command) for custom command"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist hasCommand(Landroid/media/Session2Command;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 90
    iget-object p0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 88
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    if-eqz p1, :cond_11

    .line 129
    iget-object p0, p0, Landroid/media/Session2CommandGroup;->mCommands:Ljava/util/Set;

    const/4 p2, 0x0

    new-array v0, p2, [Landroid/media/Session2Command;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/Session2Command;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void

    .line 127
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parcel shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
