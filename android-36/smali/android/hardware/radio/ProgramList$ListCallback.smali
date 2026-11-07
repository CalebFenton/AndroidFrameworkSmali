.class public abstract Landroid/hardware/radio/ProgramList$ListCallback;
.super Ljava/lang/Object;
.source "ProgramList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 76
    return-void
.end method

.method public whitelist onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 81
    return-void
.end method
