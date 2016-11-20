.class Lsun/nio/ch/Util$SelectorWrapper;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$SelectorWrapper$Closer;
    }
.end annotation


# instance fields
.field private sel:Ljava/nio/channels/Selector;


# direct methods
.method private constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    iput-object p1, p0, Lsun/nio/ch/Util$SelectorWrapper;->sel:Ljava/nio/channels/Selector;

    #@5
    .line 229
    new-instance v0, Lsun/nio/ch/Util$SelectorWrapper$Closer;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p1, v1}, Lsun/nio/ch/Util$SelectorWrapper$Closer;-><init>(Ljava/nio/channels/Selector;Lsun/nio/ch/Util$SelectorWrapper$Closer;)V

    #@b
    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    #@e
    .line 227
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/Selector;Lsun/nio/ch/Util$SelectorWrapper;)V
    .locals 0
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/Util$SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/nio/channels/Selector;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lsun/nio/ch/Util$SelectorWrapper;->sel:Ljava/nio/channels/Selector;

    #@2
    return-object v0
.end method
