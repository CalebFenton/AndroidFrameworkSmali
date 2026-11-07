.class public Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeValueEntry"
.end annotation


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:[B


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    .line 54
    iput-object p2, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getType()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    return v0
.end method

.method public blacklist getValue()[B
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    return-object v0
.end method
