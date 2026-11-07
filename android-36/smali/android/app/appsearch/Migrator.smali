.class public abstract Landroid/app/appsearch/Migrator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract whitelist onDowngrade(IILandroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument;
.end method

.method public abstract whitelist onUpgrade(IILandroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument;
.end method

.method public abstract whitelist shouldMigrate(II)Z
.end method
