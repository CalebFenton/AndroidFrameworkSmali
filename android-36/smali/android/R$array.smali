.class public final Landroid/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static final whitelist config_keySystemUuidMapping:I = 0x1070005
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist config_optionalIpSecAlgorithms:I = 0x1070006
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist emailAddressTypes:I = 0x1070000

.field public static final whitelist imProtocols:I = 0x1070001

.field public static final whitelist organizationTypes:I = 0x1070002

.field public static final whitelist phoneTypes:I = 0x1070003

.field public static final whitelist postalAddressTypes:I = 0x1070004


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
