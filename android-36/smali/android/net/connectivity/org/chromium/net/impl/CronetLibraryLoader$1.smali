.class synthetic Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;
.super Ljava/lang/Object;
.source "CronetLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 287
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->values()[Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    :try_start_9
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    return-void
.end method
