.class public Ljava/sql/BatchUpdateException;
.super Ljava/sql/SQLException;
.source "BatchUpdateException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x52f473c0c18b0e5dL


# instance fields
.field private final greylist-max-o updateCounts:[I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1, v0}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 175
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "updateCounts"    # [I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    if-nez p4, :cond_7

    const/4 v0, 0x0

    goto :goto_c

    :cond_7
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_c
    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 84
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "updateCounts"    # [I
    .param p5, "cause"    # Ljava/lang/Throwable;

    .line 294
    invoke-direct {p0, p1, p2, p3, p5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 295
    if-nez p4, :cond_7

    const/4 v0, 0x0

    goto :goto_c

    :cond_7
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_c
    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 296
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "updateCounts"    # [I

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 111
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/Throwable;)V
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "updateCounts"    # [I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 267
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "SQLState":Ljava/lang/String;
    .end local p3    # "updateCounts":[I
    .end local p4    # "cause":Ljava/lang/Throwable;
    .local v1, "reason":Ljava/lang/String;
    .local v2, "SQLState":Ljava/lang/String;
    .local v4, "updateCounts":[I
    .local v5, "cause":Ljava/lang/Throwable;
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;[I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateCounts"    # [I

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 137
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;[ILjava/lang/Throwable;)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateCounts"    # [I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "updateCounts":[I
    .end local p3    # "cause":Ljava/lang/Throwable;
    .local v1, "reason":Ljava/lang/String;
    .local v4, "updateCounts":[I
    .local v5, "cause":Ljava/lang/Throwable;
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    .line 243
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 192
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    .end local p1    # "cause":Ljava/lang/Throwable;
    .local v6, "cause":Ljava/lang/Throwable;
    invoke-direct/range {v1 .. v6}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public constructor whitelist test-api <init>([I)V
    .registers 4
    .param p1, "updateCounts"    # [I

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1, p1}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 160
    return-void
.end method

.method public constructor whitelist test-api <init>([ILjava/lang/Throwable;)V
    .registers 10
    .param p1, "updateCounts"    # [I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 218
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "updateCounts":[I
    .end local p2    # "cause":Ljava/lang/Throwable;
    .local v5, "updateCounts":[I
    .local v6, "cause":Ljava/lang/Throwable;
    invoke-direct/range {v1 .. v6}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist test-api getUpdateCounts()[I
    .registers 3

    .line 329
    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    :cond_6
    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iget-object v1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_f
    return-object v0
.end method
