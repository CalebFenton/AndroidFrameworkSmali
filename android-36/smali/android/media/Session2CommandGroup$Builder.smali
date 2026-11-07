.class public final Landroid/media/Session2CommandGroup$Builder;
.super Ljava/lang/Object;
.source "Session2CommandGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Session2CommandGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/Session2Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/Session2CommandGroup$Builder;->mCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/Session2CommandGroup;)V
    .registers 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 156
    invoke-virtual {p1}, Landroid/media/Session2CommandGroup;->getCommands()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Session2CommandGroup$Builder;->mCommands:Ljava/util/Set;

    return-void

    .line 154
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command group shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist addCommand(Landroid/media/Session2Command;)Landroid/media/Session2CommandGroup$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 169
    iget-object v0, p0, Landroid/media/Session2CommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 167
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist build()Landroid/media/Session2CommandGroup;
    .registers 2

    .line 194
    new-instance v0, Landroid/media/Session2CommandGroup;

    iget-object p0, p0, Landroid/media/Session2CommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroid/media/Session2CommandGroup;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist removeCommand(Landroid/media/Session2Command;)Landroid/media/Session2CommandGroup$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 183
    iget-object v0, p0, Landroid/media/Session2CommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 181
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
