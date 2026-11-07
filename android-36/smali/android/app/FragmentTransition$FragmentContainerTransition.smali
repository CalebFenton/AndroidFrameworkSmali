.class public Landroid/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public blacklist firstOut:Landroid/app/Fragment;

.field public blacklist firstOutIsPop:Z

.field public blacklist firstOutTransaction:Landroid/app/BackStackRecord;

.field public blacklist lastIn:Landroid/app/Fragment;

.field public blacklist lastInIsPop:Z

.field public blacklist lastInTransaction:Landroid/app/BackStackRecord;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
