.class public final synthetic Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;->f$0:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;->f$0:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->$r8$lambda$Xgq3hBDEhM_ztShleD13PdzKmX4(Landroid/database/sqlite/SQLiteConnection$OperationLog;)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    return-object v0
.end method
