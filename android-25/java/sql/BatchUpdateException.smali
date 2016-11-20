.class public Ljava/sql/BatchUpdateException;
.super Ljava/sql/SQLException;
.source "BatchUpdateException.java"


# static fields
.field private static final serialVersionUID:J = 0x52f473c0c18b0e5dL


# instance fields
.field private final updateCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v1, v0, v1}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    #@5
    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "updateCounts"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 83
    if-nez p4, :cond_0

    #@6
    :goto_0
    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    #@8
    .line 81
    return-void

    #@9
    .line 83
    :cond_0
    array-length v0, p4

    #@a
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "updateCounts"    # [I
    .param p5, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 294
    invoke-direct {p0, p1, p2, p3, p5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@4
    .line 295
    if-nez p4, :cond_0

    #@6
    :goto_0
    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    #@8
    .line 293
    return-void

    #@9
    .line 295
    :cond_0
    array-length v0, p4

    #@a
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "updateCounts"    # [I

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    #@4
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/Throwable;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "updateCounts"    # [I
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 267
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    #@9
    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateCounts"    # [I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1, p2}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    #@5
    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[ILjava/lang/Throwable;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateCounts"    # [I
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 242
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    #@9
    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 192
    if-nez p1, :cond_0

    #@3
    move-object v1, v2

    #@4
    :goto_0
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v4, v2

    #@7
    move-object v5, p1

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    #@b
    .line 191
    return-void

    #@c
    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "updateCounts"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v1, v0, p1}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    #@5
    .line 158
    return-void
.end method

.method public constructor <init>([ILjava/lang/Throwable;)V
    .locals 6
    .param p1, "updateCounts"    # [I
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 218
    if-nez p2, :cond_0

    #@3
    move-object v1, v2

    #@4
    :goto_0
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v4, p1

    #@7
    move-object v5, p2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V

    #@b
    .line 217
    return-void

    #@c
    .line 218
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method


# virtual methods
.method public getUpdateCounts()[I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 329
    iget-object v1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    #@8
    iget-object v1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    #@a
    array-length v1, v1

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method
