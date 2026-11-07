.class final Ljava/lang/runtime/SwitchBootstraps$EnumMap;
.super Ljava/lang/Object;
.source "SwitchBootstraps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/runtime/SwitchBootstraps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumMap"
.end annotation


# instance fields
.field public blacklist map:[I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/runtime/SwitchBootstraps-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/runtime/SwitchBootstraps$EnumMap;-><init>()V

    return-void
.end method
