.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public final greylist-max-o client:Landroid/app/ActivityThread$ProviderClientRecord;

.field public final greylist-max-o holder:Landroid/app/ContentProviderHolder;

.field public greylist-max-o removePending:Z

.field public greylist-max-o stableCount:I

.field public greylist-max-o unstableCount:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    .registers 5
    .param p1, "inHolder"    # Landroid/app/ContentProviderHolder;
    .param p2, "inClient"    # Landroid/app/ActivityThread$ProviderClientRecord;
    .param p3, "sCount"    # I
    .param p4, "uCount"    # I

    .line 5945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5946
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 5947
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5948
    iput p3, p0, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 5949
    iput p4, p0, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 5950
    return-void
.end method
