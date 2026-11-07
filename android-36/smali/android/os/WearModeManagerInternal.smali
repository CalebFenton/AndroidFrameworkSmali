.class public interface abstract Landroid/os/WearModeManagerInternal;
.super Ljava/lang/Object;
.source "WearModeManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WearModeManagerInternal$Identifier;
    }
.end annotation


# static fields
.field public static final blacklist OFFBODY_STATE_ID:Ljava/lang/String; = "off_body"

.field public static final blacklist QUICK_DOZE_REQUEST_IDENTIFIER:Ljava/lang/String; = "quick_doze_request"


# virtual methods
.method public abstract blacklist addActiveStateChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation
.end method
