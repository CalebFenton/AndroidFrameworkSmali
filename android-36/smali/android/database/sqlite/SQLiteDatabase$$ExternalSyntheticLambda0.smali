.class public final synthetic Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->createSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method
