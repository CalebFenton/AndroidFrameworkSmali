.class public Lcom/android/ims/rcs/uce/eab/EabProvider$EabCommonColumns;
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
    name = "EabCommonColumns"
.end annotation


# static fields
.field public static final blacklist EAB_CONTACT_ID:Ljava/lang/String; = "eab_contact_id"

.field public static final blacklist ENTITY_URI:Ljava/lang/String; = "entity_uri"

.field public static final blacklist MECHANISM:Ljava/lang/String; = "mechanism"

.field public static final blacklist REQUEST_RESULT:Ljava/lang/String; = "request_result"

.field public static final blacklist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
