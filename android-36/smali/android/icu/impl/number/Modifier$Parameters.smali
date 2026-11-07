.class public Landroid/icu/impl/number/Modifier$Parameters;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public blacklist obj:Landroid/icu/impl/number/ModifierStore;

.field public blacklist plural:Landroid/icu/impl/StandardPlural;

.field public blacklist signum:Landroid/icu/impl/number/Modifier$Signum;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
