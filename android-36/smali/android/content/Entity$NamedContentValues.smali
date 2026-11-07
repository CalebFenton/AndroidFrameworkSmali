.class public Landroid/content/Entity$NamedContentValues;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedContentValues"
.end annotation


# instance fields
.field public final whitelist uri:Landroid/net/Uri;

.field public final whitelist values:Landroid/content/ContentValues;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 61
    iput-object p2, p0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 62
    return-void
.end method
