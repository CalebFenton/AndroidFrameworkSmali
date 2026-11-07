.class public Landroid/nfc/OemLogItems$Builder;
.super Ljava/lang/Object;
.source "OemLogItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/OemLogItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mItem:Landroid/nfc/OemLogItems;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 10
    .param p1, "type"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Landroid/nfc/OemLogItems;

    const/4 v1, 0x0

    new-array v4, v1, [B

    new-array v5, v1, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    .end local p1    # "type":I
    .local v1, "type":I
    invoke-direct/range {v0 .. v7}, Landroid/nfc/OemLogItems;-><init>(III[B[BLjava/time/Instant;Landroid/nfc/Tag;)V

    iput-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    .line 159
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/nfc/OemLogItems;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    return-object v0
.end method

.method public blacklist setAction(I)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "action"    # I

    .line 163
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmAction(Landroid/nfc/OemLogItems;I)V

    .line 164
    return-object p0
.end method

.method public blacklist setApduCommand([B)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "apdus"    # [B

    .line 181
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmCommandApdus(Landroid/nfc/OemLogItems;[B)V

    .line 182
    return-object p0
.end method

.method public blacklist setApduResponse([B)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "apdus"    # [B

    .line 193
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmResponseApdus(Landroid/nfc/OemLogItems;[B)V

    .line 194
    return-object p0
.end method

.method public blacklist setCallingEvent(I)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "event"    # I

    .line 169
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmEvent(Landroid/nfc/OemLogItems;I)V

    .line 170
    return-object p0
.end method

.method public blacklist setCallingPid(I)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "pid"    # I

    .line 175
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmCallingPid(Landroid/nfc/OemLogItems;I)V

    .line 176
    return-object p0
.end method

.method public blacklist setRfFieldOnTime(Ljava/time/Instant;)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "time"    # Ljava/time/Instant;

    .line 187
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmRfFieldOnTime(Landroid/nfc/OemLogItems;Ljava/time/Instant;)V

    .line 188
    return-object p0
.end method

.method public blacklist setTag(Landroid/nfc/Tag;)Landroid/nfc/OemLogItems$Builder;
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 199
    iget-object v0, p0, Landroid/nfc/OemLogItems$Builder;->mItem:Landroid/nfc/OemLogItems;

    invoke-static {v0, p1}, Landroid/nfc/OemLogItems;->-$$Nest$fputmTag(Landroid/nfc/OemLogItems;Landroid/nfc/Tag;)V

    .line 200
    return-object p0
.end method
