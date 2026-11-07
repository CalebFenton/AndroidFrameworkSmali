.class public Lcom/android/ims/rcs/uce/eab/EabProvider$ContactColumns;
.super Ljava/lang/Object;
.source "EabProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactColumns"
.end annotation


# static fields
.field public static final blacklist CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final blacklist DATA_ID:Ljava/lang/String; = "data_id"

.field public static final blacklist PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final blacklist RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
