.class public interface abstract Landroid/content/ComponentCallbacks2;
.super Ljava/lang/Object;
.source "ComponentCallbacks2.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ComponentCallbacks2$TrimMemoryLevel;
    }
.end annotation


# static fields
.field public static final whitelist TRIM_MEMORY_BACKGROUND:I = 0x28

.field public static final whitelist TRIM_MEMORY_COMPLETE:I = 0x50
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRIM_MEMORY_MODERATE:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRIM_MEMORY_RUNNING_CRITICAL:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRIM_MEMORY_RUNNING_LOW:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRIM_MEMORY_RUNNING_MODERATE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRIM_MEMORY_UI_HIDDEN:I = 0x14


# virtual methods
.method public abstract whitelist onTrimMemory(I)V
.end method
