.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/Linker$RelroSharingMode;
.super Ljava/lang/Object;
.source "Linker.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "RelroSharingMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist CONSUME:I = 0x2

.field public static final blacklist NO_SHARING:I = 0x0

.field public static final blacklist PRODUCE:I = 0x1
