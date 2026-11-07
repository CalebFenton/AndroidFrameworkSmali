.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/Linker$PreferAddress;
.super Ljava/lang/Object;
.source "Linker.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PreferAddress"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FIND_RESERVED:I = 0x0

.field public static final blacklist RESERVE_HINT:I = 0x1

.field public static final blacklist RESERVE_RANDOM:I = 0x2
