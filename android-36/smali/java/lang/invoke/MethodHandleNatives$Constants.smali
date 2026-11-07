.class Ljava/lang/invoke/MethodHandleNatives$Constants;
.super Ljava/lang/Object;
.source "MethodHandleNatives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandleNatives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constants"
.end annotation


# static fields
.field static final blacklist REF_LIMIT:B = 0xat

.field static final blacklist REF_NONE:B = 0x0t

.field static final blacklist REF_getField:B = 0x1t

.field static final blacklist REF_getStatic:B = 0x2t

.field static final blacklist REF_invokeInterface:B = 0x9t

.field static final blacklist REF_invokeSpecial:B = 0x7t

.field static final blacklist REF_invokeStatic:B = 0x6t

.field static final blacklist REF_invokeVirtual:B = 0x5t

.field static final blacklist REF_newInvokeSpecial:B = 0x8t

.field static final blacklist REF_putField:B = 0x3t

.field static final blacklist REF_putStatic:B = 0x4t


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
